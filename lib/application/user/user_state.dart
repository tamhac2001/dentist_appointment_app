import 'package:dentist_appointment_app/domain/auth/user.dart';
import 'package:dentist_appointment_app/domain/user/user_failure.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial(User user) = _Initial;

  const factory UserState.loadFailure(UserFailure failure) = _LoadFailure;

  const factory UserState.loadSuccess(User user) = LoadSuccess;

  const factory UserState.updateFailure(UserFailure failure) = _UpdateFailure;

  const factory UserState.updateSuccess(User user) = _UpdateSuccess;
}
