import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_failure.freezed.dart';

@freezed
class UserFailure with _$UserFailure {
  const factory UserFailure.unexpected() = Unexpected;

  const factory UserFailure.insufficientPermission() =
  InsufficientPermission;

  const factory UserFailure.unableToUpdate() = UnableToUpdate;
  const factory UserFailure.unableToUploadAvatar() =UnableToUploadAvatar;
}
