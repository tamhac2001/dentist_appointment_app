import 'package:dentist_appointment_app/domain/user/user_failure.dart';

import 'value_failure.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    return Error.safeToString(
        'UnexpectedValueError{valueFailure: $valueFailure}');
  }
}
class UnexpectedUserError extends Error {
  final UserFailure userFailure;

  UnexpectedUserError(this.userFailure);

  @override
  String toString() {
    return Error.safeToString(
        'UnexpectedUserError{valueFailure: $userFailure}');
  }
}

class NotAuthenticatedError extends Error {}
