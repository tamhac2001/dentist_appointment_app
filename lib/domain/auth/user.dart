import 'package:dartz/dartz.dart';
import 'package:dentist_appointment_app/domain/auth/value_objects.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../application/utils/constants.dart';
import '../../application/utils/enums.dart';
import '../core/value_failure.dart';
import '../user/value_objects.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();

  const factory User({
    required UniqueId uid,
    required EmailAddress email,
    required FullName fullName,
    required PhoneNumber phoneNumber,
    required Gender gender,
    required String avatarUrl,
    required Map<String, dynamic> medicalRecord,
    required List<UniqueId> appointmentsId,
    required bool isPatient,
    required bool isDentist,
  }) = _User;

  factory User.initial() => User(
        uid: UniqueId.fromUniqueString(''),
        email: EmailAddress(''),
        fullName: FullName(''),
        phoneNumber: PhoneNumber(''),
        gender: Gender.male,
        avatarUrl: Constant.defaultAvatarUrl,
        medicalRecord: {},
        appointmentsId: [],
        isPatient: true,
        isDentist: false,
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return email.failureOrUnit
        .andThen(fullName.failureOrUnit)
        .andThen(phoneNumber.failureOrUnit)
        .fold((failure) => some(failure), (_) => none());
  }
}
