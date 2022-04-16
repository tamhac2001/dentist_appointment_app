// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_setting_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileSettingFormStateTearOff {
  const _$ProfileSettingFormStateTearOff();

  _ProfileSettingFormState call(
      {required User user,
      required bool isSubmitting,
      required Either<UserFailure, Unit>? userFailureOrSuccess,
      required bool showErrorMessage}) {
    return _ProfileSettingFormState(
      user: user,
      isSubmitting: isSubmitting,
      userFailureOrSuccess: userFailureOrSuccess,
      showErrorMessage: showErrorMessage,
    );
  }
}

/// @nodoc
const $ProfileSettingFormState = _$ProfileSettingFormStateTearOff();

/// @nodoc
mixin _$ProfileSettingFormState {
  User get user => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Either<UserFailure, Unit>? get userFailureOrSuccess =>
      throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileSettingFormStateCopyWith<ProfileSettingFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileSettingFormStateCopyWith<$Res> {
  factory $ProfileSettingFormStateCopyWith(ProfileSettingFormState value,
          $Res Function(ProfileSettingFormState) then) =
      _$ProfileSettingFormStateCopyWithImpl<$Res>;
  $Res call(
      {User user,
      bool isSubmitting,
      Either<UserFailure, Unit>? userFailureOrSuccess,
      bool showErrorMessage});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$ProfileSettingFormStateCopyWithImpl<$Res>
    implements $ProfileSettingFormStateCopyWith<$Res> {
  _$ProfileSettingFormStateCopyWithImpl(this._value, this._then);

  final ProfileSettingFormState _value;
  // ignore: unused_field
  final $Res Function(ProfileSettingFormState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? isSubmitting = freezed,
    Object? userFailureOrSuccess = freezed,
    Object? showErrorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      userFailureOrSuccess: userFailureOrSuccess == freezed
          ? _value.userFailureOrSuccess
          : userFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<UserFailure, Unit>?,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$ProfileSettingFormStateCopyWith<$Res>
    implements $ProfileSettingFormStateCopyWith<$Res> {
  factory _$ProfileSettingFormStateCopyWith(_ProfileSettingFormState value,
          $Res Function(_ProfileSettingFormState) then) =
      __$ProfileSettingFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {User user,
      bool isSubmitting,
      Either<UserFailure, Unit>? userFailureOrSuccess,
      bool showErrorMessage});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$ProfileSettingFormStateCopyWithImpl<$Res>
    extends _$ProfileSettingFormStateCopyWithImpl<$Res>
    implements _$ProfileSettingFormStateCopyWith<$Res> {
  __$ProfileSettingFormStateCopyWithImpl(_ProfileSettingFormState _value,
      $Res Function(_ProfileSettingFormState) _then)
      : super(_value, (v) => _then(v as _ProfileSettingFormState));

  @override
  _ProfileSettingFormState get _value =>
      super._value as _ProfileSettingFormState;

  @override
  $Res call({
    Object? user = freezed,
    Object? isSubmitting = freezed,
    Object? userFailureOrSuccess = freezed,
    Object? showErrorMessage = freezed,
  }) {
    return _then(_ProfileSettingFormState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      userFailureOrSuccess: userFailureOrSuccess == freezed
          ? _value.userFailureOrSuccess
          : userFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<UserFailure, Unit>?,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ProfileSettingFormState implements _ProfileSettingFormState {
  const _$_ProfileSettingFormState(
      {required this.user,
      required this.isSubmitting,
      required this.userFailureOrSuccess,
      required this.showErrorMessage});

  @override
  final User user;
  @override
  final bool isSubmitting;
  @override
  final Either<UserFailure, Unit>? userFailureOrSuccess;
  @override
  final bool showErrorMessage;

  @override
  String toString() {
    return 'ProfileSettingFormState(user: $user, isSubmitting: $isSubmitting, userFailureOrSuccess: $userFailureOrSuccess, showErrorMessage: $showErrorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileSettingFormState &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality()
                .equals(other.userFailureOrSuccess, userFailureOrSuccess) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessage, showErrorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(userFailureOrSuccess),
      const DeepCollectionEquality().hash(showErrorMessage));

  @JsonKey(ignore: true)
  @override
  _$ProfileSettingFormStateCopyWith<_ProfileSettingFormState> get copyWith =>
      __$ProfileSettingFormStateCopyWithImpl<_ProfileSettingFormState>(
          this, _$identity);
}

abstract class _ProfileSettingFormState implements ProfileSettingFormState {
  const factory _ProfileSettingFormState(
      {required User user,
      required bool isSubmitting,
      required Either<UserFailure, Unit>? userFailureOrSuccess,
      required bool showErrorMessage}) = _$_ProfileSettingFormState;

  @override
  User get user;
  @override
  bool get isSubmitting;
  @override
  Either<UserFailure, Unit>? get userFailureOrSuccess;
  @override
  bool get showErrorMessage;
  @override
  @JsonKey(ignore: true)
  _$ProfileSettingFormStateCopyWith<_ProfileSettingFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
