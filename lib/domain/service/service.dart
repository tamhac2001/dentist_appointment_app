import 'package:dartz/dartz.dart';
import 'package:decimal/decimal.dart';
import 'package:dentist_appointment_app/domain/core/value_failure.dart';
import 'package:dentist_appointment_app/domain/service/value_objects.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../auth/value_objects.dart';

part 'service.freezed.dart';


@freezed
class Service with _$Service {
  const factory Service({
    required UniqueId id,
    required ServiceName name,
    required ServiceDescription description,
    required Decimal price,
    required int timeOfUse,
  }) = _Service;

  const Service._();

  factory Service.initial() => Service(
      id: UniqueId(),
      name: ServiceName(''),
      description: ServiceDescription(''),
      price: Decimal.zero,
      timeOfUse: 0);

  Option<ValueFailure<dynamic>> get failureOptions {
    return name.failureOrUnit
        .andThen(description.failureOrUnit)
        .fold((failure) => some(failure), (_) => none());
  }
}
