import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:dentist_appointment_app/application/user/profile_setting_form/profile_setting_form_state.dart';
import 'package:dentist_appointment_app/domain/auth/user.dart';
import 'package:dentist_appointment_app/domain/core/errors.dart';
import 'package:dentist_appointment_app/domain/user/i_user_repository.dart';
import 'package:dentist_appointment_app/domain/user/user_failure.dart';
import 'package:dentist_appointment_app/domain/user/value_objects.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/enums.dart';

class ProfileSettingFormNotifier
    extends StateNotifier<ProfileSettingFormState> {
  ProfileSettingFormNotifier(this._repository)
      : super(ProfileSettingFormState.initial());

  final IUserRepository _repository;

  void initialized(User user) {
    state = state.copyWith(user: user);
  }

  void fullNameChanged(String fullName) {
    state = state.copyWith(
      user: state.user.copyWith(
        fullName: FullName(fullName),
      ),
      userFailureOrSuccess: null,
    );
  }

  void phoneNumberChanged(String phoneNumber) {
    state = state.copyWith(
      user: state.user.copyWith(
        phoneNumber: PhoneNumber(phoneNumber),
      ),
      userFailureOrSuccess: null,
    );
  }

  void genderChanged(Gender gender) {
    state = state.copyWith(
      user: state.user.copyWith(gender: gender),
      userFailureOrSuccess: null,
    );
  }

  void avatarChanged(Uint8List avatar) async {
    final failureOrAvatarUrl = await _repository.uploadAvatar(avatar);
    state = state.copyWith(
      user: failureOrAvatarUrl.fold(
          (failure) => throw UnexpectedUserError(failure),
          (avatarUrl) => state.user.copyWith(avatarUrl: avatarUrl)),
      userFailureOrSuccess: null,
    );
  }

  void cancelButtonClicked(User user) {
    state = ProfileSettingFormState.initial();
    initialized(user);
  }

  Future<void> submitButtonClicked() async {
    Either<UserFailure, Unit>? failureOrSuccess;
    if (state.user.fullName.isValid() && state.user.phoneNumber.isValid()) {
      state = state.copyWith(
        isSubmitting: true,
        userFailureOrSuccess: null,
      );
      failureOrSuccess = await _repository.update(state.user);

      state = state.copyWith(
        isSubmitting: false,
        userFailureOrSuccess: failureOrSuccess,
      );
    }
    state = state.copyWith(
      showErrorMessage: true,
      userFailureOrSuccess: failureOrSuccess,
    );
  }
}
