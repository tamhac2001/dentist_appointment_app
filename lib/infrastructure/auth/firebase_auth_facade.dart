import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:dentist_appointment_app/domain/auth/auth_failure.dart';
import 'package:dentist_appointment_app/domain/auth/i_auth_facade.dart';
import 'package:dentist_appointment_app/domain/auth/value_objects.dart';
import 'package:dentist_appointment_app/infrastructure/user/user_dto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../core/firestore_helpers.dart';
import '../../domain/auth/user.dart' as domain;
import 'firebase_user_mapper.dart';

class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseFirestore _firestore;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn, this._firestore);

  @override
  Option<domain.User> getSignInUser() {
    return optionOf(_firebaseAuth.currentUser?.toDomain());
  }

  @override
  Future<Either<AuthFailure, Unit>> signUpWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();
    try {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailString, password: passwordString);

      await _firestore.usersCollection.doc(userCredential.user!.uid).set(
          UserDTO.initial(emailString));

      // createUserWithEmailAndPassword automatically sign user in
      await signOut();
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: emailString, password: passwordString);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    if (googleUser == null) {
      return left(const AuthFailure.cancelledByUser());
    }
    final googleAuthentication = await googleUser.authentication;
    final authCredential = GoogleAuthProvider.credential(
      accessToken: googleAuthentication.accessToken,
      idToken: googleAuthentication.idToken,
    );
    return _firebaseAuth
        .signInWithCredential(authCredential)
        .then((_) => right(unit))
      ..onError((error, stackTrace) => left(const AuthFailure.serverError()));
  }

  @override
  Future<void> signOut() =>
      Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
      ]);
}
