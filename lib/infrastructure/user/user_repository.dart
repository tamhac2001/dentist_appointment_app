import 'dart:developer';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:dentist_appointment_app/domain/auth/i_auth_facade.dart';
import 'package:dentist_appointment_app/domain/auth/user.dart';
import 'package:dentist_appointment_app/domain/user/i_user_repository.dart';
import 'package:dentist_appointment_app/domain/user/user_failure.dart';
import 'package:dentist_appointment_app/infrastructure/user/user_dto.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:rxdart/rxdart.dart';

import '../core/firebase_storage_helper.dart';
import '../core/firestore_helpers.dart';

class UserRepository extends IUserRepository {
  final IAuthFacade _authFacade;

  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;

  UserRepository(this._authFacade, this._firestore, this._storage);

  @override
  Stream<Either<UserFailure, User>> fetchData() async* {
    yield* _firestore
        .currentUserDocument(_authFacade)
        .snapshots()
        .map((snapshot) {
      return right<UserFailure, User>(
        snapshot.data()!.toDomain(),
      );
    }).onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException && e.message!.contains('permission-denied')) {
        return left(const UserFailure.insufficientPermission());
      } else {
        log('UserRepository fetch data' + e.toString(), error: e);
        return left(const UserFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<UserFailure, Unit>> create(User user) async {
    final userCollection = _firestore.usersCollection;
    final userDTO = UserDTO.fromDomain(user);
    try {
      await userCollection.doc(userDTO.uid).set(userDTO);
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('permission-denied')) {
        return left(const UserFailure.insufficientPermission());
      } else {
        log('UserRepository create data' + e.toString(), error: e);
        return left(const UserFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<UserFailure, String>> uploadAvatar(Uint8List avatar) async {
    try {
      final downloadUrl = await _storage
          .currentUserAvatar(_authFacade)
          .putData(avatar)
          .then((taskSnapshot) => taskSnapshot.ref.getDownloadURL());
      return right(downloadUrl);
    } catch (e) {
      log('UserRepository uploadAvatar' + e.toString(), error: e);
      return left(const UserFailure.unableToUploadAvatar());
    }
  }

  @override
  Future<Either<UserFailure, Unit>> update(User user) async {
    final userCollection = _firestore.usersCollection;
    final userDTO = UserDTO.fromDomain(user);
    try {
      await userCollection.doc(userDTO.uid).update(userDTO.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('permission-denied')) {
        return left(const UserFailure.insufficientPermission());
      } else if ((e.message!.contains('not-found'))) {
        return left(const UserFailure.unableToUpdate());
      } else {
        log('UserRepository update data' + e.toString(), error: e);
        return left(const UserFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<UserFailure, Unit>> delete(User user) async {
    final userCollection = _firestore.usersCollection;
    final userDTO = UserDTO.fromDomain(user);
    try {
      await userCollection.doc(userDTO.uid).delete();
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('permission-denied')) {
        return left(const UserFailure.insufficientPermission());
      } else if ((e.message!.contains('not-found'))) {
        return left(const UserFailure.unableToUpdate());
      } else {
        log('UserRepository update data' + e.toString(), error: e);
        return left(const UserFailure.unexpected());
      }
    }
  }
}
