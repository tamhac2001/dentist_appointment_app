// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dentist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DentistTearOff {
  const _$DentistTearOff();

  _Dentist call(User user) {
    return _Dentist(
      user,
    );
  }
}

/// @nodoc
const $Dentist = _$DentistTearOff();

/// @nodoc
mixin _$Dentist {
  User get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DentistCopyWith<Dentist> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DentistCopyWith<$Res> {
  factory $DentistCopyWith(Dentist value, $Res Function(Dentist) then) =
      _$DentistCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$DentistCopyWithImpl<$Res> implements $DentistCopyWith<$Res> {
  _$DentistCopyWithImpl(this._value, this._then);

  final Dentist _value;
  // ignore: unused_field
  final $Res Function(Dentist) _then;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
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
abstract class _$DentistCopyWith<$Res> implements $DentistCopyWith<$Res> {
  factory _$DentistCopyWith(_Dentist value, $Res Function(_Dentist) then) =
      __$DentistCopyWithImpl<$Res>;
  @override
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$DentistCopyWithImpl<$Res> extends _$DentistCopyWithImpl<$Res>
    implements _$DentistCopyWith<$Res> {
  __$DentistCopyWithImpl(_Dentist _value, $Res Function(_Dentist) _then)
      : super(_value, (v) => _then(v as _Dentist));

  @override
  _Dentist get _value => super._value as _Dentist;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_Dentist(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_Dentist implements _Dentist {
  const _$_Dentist(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'Dentist(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Dentist &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$DentistCopyWith<_Dentist> get copyWith =>
      __$DentistCopyWithImpl<_Dentist>(this, _$identity);
}

abstract class _Dentist implements Dentist {
  const factory _Dentist(User user) = _$_Dentist;

  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$DentistCopyWith<_Dentist> get copyWith =>
      throw _privateConstructorUsedError;
}
