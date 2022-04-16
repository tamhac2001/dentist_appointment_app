import 'package:dartz/dartz.dart';
import 'package:dentist_appointment_app/application/utils/enums.dart';
import 'package:dentist_appointment_app/domain/user/user_failure.dart';
import 'package:dentist_appointment_app/domain/user/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/user.dart';

part 'profile_setting_form_state.freezed.dart';

@freezed
class ProfileSettingFormState with _$ProfileSettingFormState {
  const factory ProfileSettingFormState({
    required User user,
    required bool isSubmitting,
    required Either<UserFailure, Unit>? userFailureOrSuccess,
    required bool showErrorMessage,
  }) = _ProfileSettingFormState;

  factory ProfileSettingFormState.initial() => ProfileSettingFormState(
        user: User.initial(),
        isSubmitting: false,
        userFailureOrSuccess: null,
        showErrorMessage: false,
      );
}
