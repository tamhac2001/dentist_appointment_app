import 'package:dartz/dartz.dart';
import 'package:dentist_appointment_app/domain/auth/auth_failure.dart';
import 'package:dentist_appointment_app/domain/auth/value_objects.dart';

import 'user.dart';

abstract class IAuthFacade {
  Option<User> getSignInUser();

  Future<Either<AuthFailure, Unit>> signUpWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<void> signOut();
}
