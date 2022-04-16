import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:dentist_appointment_app/domain/auth/user.dart';
import 'package:dentist_appointment_app/domain/user/user_failure.dart';

abstract class IUserRepository{
  Stream<Either<UserFailure,User>> fetchData();
  Future<Either<UserFailure,Unit>> create(User user);
  Future<Either<UserFailure,String>> uploadAvatar(Uint8List avatar);
  Future<Either<UserFailure,Unit>> update(User user);
  Future<Either<UserFailure,Unit>> delete(User user);

}