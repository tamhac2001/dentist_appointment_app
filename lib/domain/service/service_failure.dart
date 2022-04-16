import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_failure.freezed.dart';

@freezed
class ServiceFailure with _$ServiceFailure {
  const factory ServiceFailure.unexpected() = Unexpected;

  const factory ServiceFailure.insufficientPermission() =
      InsufficientPermission;

  const factory ServiceFailure.unableToUpdate() = UnableToUpdate;
}
