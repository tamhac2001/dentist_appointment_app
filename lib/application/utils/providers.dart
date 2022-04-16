import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:dentist_appointment_app/application/auth/auth_state.dart';
import 'package:dentist_appointment_app/application/auth/auth_state_notifier.dart';
import 'package:dentist_appointment_app/application/auth/sign_in_form/sign_in_form_notifier.dart';
import 'package:dentist_appointment_app/application/auth/sign_in_form/sign_in_form_state.dart';
import 'package:dentist_appointment_app/application/service/service_list_state.dart';
import 'package:dentist_appointment_app/application/service/service_list_state_notifier.dart';
import 'package:dentist_appointment_app/application/user/profile_setting_form/profile_setting_form_notifier.dart';
import 'package:dentist_appointment_app/application/user/profile_setting_form/profile_setting_form_state.dart';
import 'package:dentist_appointment_app/application/user/user_state.dart';
import 'package:dentist_appointment_app/application/user/user_state_notifier.dart';
import 'package:dentist_appointment_app/domain/auth/user.dart' as domain;
import 'package:dentist_appointment_app/domain/user/user_failure.dart';
import 'package:dentist_appointment_app/infrastructure/auth/firebase_auth_facade.dart';
import 'package:dentist_appointment_app/infrastructure/service/service_repository.dart';
import 'package:dentist_appointment_app/infrastructure/user/user_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../domain/core/errors.dart';

final firebaseAuthProvider =
    Provider<FirebaseAuth>((ref) => FirebaseAuth.instance);

final googleSignInProvider = Provider<GoogleSignIn>((ref) => GoogleSignIn());

final firestoreProvider =
    Provider<FirebaseFirestore>((ref) => FirebaseFirestore.instance);

final firebaseStorageProvider =
    Provider<FirebaseStorage>((ref) => FirebaseStorage.instance);

final firebaseAuthFacadeProvider = Provider<FirebaseAuthFacade>((ref) {
  final firebaseAuth = ref.read(firebaseAuthProvider);
  final googleSignIn = ref.read(googleSignInProvider);
  final firestore = ref.read(firestoreProvider);
  return FirebaseAuthFacade(firebaseAuth, googleSignIn, firestore);
});

final userRepositoryProvider = Provider<UserRepository>((ref) {
  final authFacade = ref.read(firebaseAuthFacadeProvider);
  final firestore = ref.read(firestoreProvider);
  final storage = ref.read(firebaseStorageProvider);
  return UserRepository(authFacade, firestore, storage);
});

final serviceRepositoryProvider = Provider<ServiceRepository>((ref) {
  final firestore = ref.read(firestoreProvider);
  return ServiceRepository(firestore);
});

final currentUserProvider =
    StateProvider<Either<UserFailure, domain.User>>((ref) {
  final userState = ref.watch(userStateProvider);
  return userState.when(
    initial: (user) => right(user),
    loadSuccess: (user) => right(user),
    updateSuccess: (user) => right(user),
    loadFailure: (userFailure) => left(userFailure),
    updateFailure: (userFailure) => left(userFailure),
  );
});

final signInFormStateProvider =
    StateNotifierProvider<SignInFormNotifier, SignInFormState>((ref) {
  final firebaseAuthFacade = ref.read(firebaseAuthFacadeProvider);
  return SignInFormNotifier(firebaseAuthFacade);
});

final authStateProvider =
    StateNotifierProvider<AuthStateNotifier, AuthState>((ref) {
  final firebaseAuthFacade = ref.read(firebaseAuthFacadeProvider);
  final authState = AuthStateNotifier(firebaseAuthFacade);
  authState.authCheckRequest();
  return authState;
});

final userStateProvider =
    StateNotifierProvider<UserStateNotifier, UserState>((ref) {
  final user = ref.watch(authStateProvider).maybeWhen(
      authenticated: (user) => user, orElse: () => domain.User.initial());
  final userRepository = ref.read(userRepositoryProvider);
  final userStateNotifier = UserStateNotifier(user, userRepository);
  userStateNotifier.initialized();
  return userStateNotifier;
});

final serviceListStateProvider =
    StateNotifierProvider<ServiceListStateNotifier, ServiceListState>(
  (ref) {
    final serviceRepository = ref.read(serviceRepositoryProvider);
    return ServiceListStateNotifier(serviceRepository);
  },
);

final profileSettingFormStateProvider =
    StateNotifierProvider<ProfileSettingFormNotifier, ProfileSettingFormState>(
        (ref) {
  final repository = ref.read(userRepositoryProvider);
  final currentUser = ref
      .read(currentUserProvider)
      .fold((l) => throw UnexpectedUserError(l), id);
  final profileSettingFormNotifier = ProfileSettingFormNotifier(
    repository,
  );
  profileSettingFormNotifier.initialized(currentUser);
  return profileSettingFormNotifier;
});

// final isFirstTimeSignInProvider = StateProvider<bool>((ref) => false);

final dentistSearchKeywordProvider = StateProvider<String>(
  (ref) => "",
);

// final dentistsListSearchProvider = StateProvider<List<Dentist>>(
//   (ref) {
//     // all dentists
//     final dentists = ref.watch(dentistsListProvider);
//     // searchKeyword
//     final searchInput = ref.watch(dentistSearchKeywordProvider);
//     if (searchInput.isEmpty) return dentists;
//     return dentists
//         .where((dentist) => dentist.fullName!.contains(searchInput))
//         .toList();
//   },
// );

// final authStateProvider = StreamProvider<User?>((ref) {
//   final firebaseAuth = ref.read(firebaseAuthProvider);
//   return firebaseAuth.authStateChanges();
// });
