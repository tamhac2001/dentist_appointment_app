import 'package:dartz/dartz.dart';
import 'package:dentist_appointment_app/application/auth/sign_in_form/sign_in_form_state.dart';
import 'package:dentist_appointment_app/domain/auth/auth_failure.dart';
import 'package:dentist_appointment_app/domain/auth/i_auth_facade.dart';
import 'package:dentist_appointment_app/domain/auth/value_objects.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class SignInFormNotifier extends StateNotifier<SignInFormState> {
  SignInFormNotifier(this._authFacade) : super(SignInFormState.initial());

  final IAuthFacade _authFacade;

  void emailChanged(String email) {
    state = state.copyWith(
      emailAddress: EmailAddress(email),
      authFailureOrSuccessOption: none(),
    );
  }

  void passwordChanged(String password) {
    state = state.copyWith(
      password: Password(password),
      authFailureOrSuccessOption: none(),
    );
  }

  Future<void> signUpWithEmailAndPasswordPressed() async {
    await _performActionOnAuthFacadeWithEmailAndPassword(
        _authFacade.signUpWithEmailAndPassword);
  }

  Future<void> signInWithEmailAndPasswordPressed() async {
    await _performActionOnAuthFacadeWithEmailAndPassword(
        _authFacade.signInWithEmailAndPassword);
  }

  Future<void> signInWithGooglePressed() async {
    state = state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    );
    final failureOrSuccess = await _authFacade.signInWithGoogle();
    state = state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: some(failureOrSuccess),
    );
  }

  Future<void> _performActionOnAuthFacadeWithEmailAndPassword(
      Future<Either<AuthFailure, Unit>> Function(
              {required EmailAddress emailAddress, required Password password})
          forwardCall) async {
    Either<AuthFailure, Unit>? failureOrSuccess;
    if (state.emailAddress.isValid() && state.password.isValid()) {
      state = state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );
      failureOrSuccess = await forwardCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );
      state = state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(failureOrSuccess),
      );
    }
    state = state.copyWith(
      showErrorMessage: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
