import 'package:dartz/dartz.dart';
import 'package:dentist_appointment_app/domain/core/value_validators.dart';

import '../core/value_failure.dart';
import '../core/value_object.dart';

class ServiceName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ServiceName(String input) {
    return ServiceName._(validateStringNotEmpty(input));
  }

  const ServiceName._(this.value);
}

class ServiceDescription extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ServiceDescription(String input) {
    return ServiceDescription._(validateStringNotEmpty(input));
  }

  const ServiceDescription._(this.value);
}
