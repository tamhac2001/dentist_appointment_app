import 'package:dartz/dartz.dart';
import 'package:dentist_appointment_app/domain/core/value_validators.dart';

import '../core/value_failure.dart';
import '../core/value_object.dart';

class FullName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory FullName(String input) {
    return FullName._(validateStringNotEmpty(input));
  }

  const FullName._(this.value);
}

class PhoneNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PhoneNumber(String input) {
    return PhoneNumber._(validatePhoneNumber(input));
  }

  const PhoneNumber._(this.value);
}
