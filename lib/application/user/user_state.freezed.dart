// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

  _Initial initial(User user) {
    return _Initial(
      user,
    );
  }

  _LoadFailure loadFailure(UserFailure failure) {
    return _LoadFailure(
      failure,
    );
  }

  LoadSuccess loadSuccess(User user) {
    return LoadSuccess(
      user,
    );
  }

  _UpdateFailure updateFailure(UserFailure failure) {
    return _UpdateFailure(
      failure,
    );
  }

  _UpdateSuccess updateSuccess(User user) {
    return _UpdateSuccess(
      user,
    );
  }
}

/// @nodoc
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) initial,
    required TResult Function(UserFailure failure) loadFailure,
    required TResult Function(User user) loadSuccess,
    required TResult Function(UserFailure failure) updateFailure,
    required TResult Function(User user) updateSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? initial,
    TResult Function(UserFailure failure)? loadFailure,
    TResult Function(User user)? loadSuccess,
    TResult Function(UserFailure failure)? updateFailure,
    TResult Function(User user)? updateSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? initial,
    TResult Function(UserFailure failure)? loadFailure,
    TResult Function(User user)? loadSuccess,
    TResult Function(UserFailure failure)? updateFailure,
    TResult Function(User user)? updateSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
    required TResult Function(_UpdateSuccess value) updateSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_Initial(
      user == freezed
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

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial(this.user);

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState.initial(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState.initial'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) initial,
    required TResult Function(UserFailure failure) loadFailure,
    required TResult Function(User user) loadSuccess,
    required TResult Function(UserFailure failure) updateFailure,
    required TResult Function(User user) updateSuccess,
  }) {
    return initial(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? initial,
    TResult Function(UserFailure failure)? loadFailure,
    TResult Function(User user)? loadSuccess,
    TResult Function(UserFailure failure)? updateFailure,
    TResult Function(User user)? updateSuccess,
  }) {
    return initial?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? initial,
    TResult Function(UserFailure failure)? loadFailure,
    TResult Function(User user)? loadSuccess,
    TResult Function(UserFailure failure)? updateFailure,
    TResult Function(User user)? updateSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
    required TResult Function(_UpdateSuccess value) updateSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserState {
  const factory _Initial(User user) = _$_Initial;

  User get user;
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({UserFailure failure});

  $UserFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_LoadFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as UserFailure,
    ));
  }

  @override
  $UserFailureCopyWith<$Res> get failure {
    return $UserFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure with DiagnosticableTreeMixin implements _LoadFailure {
  const _$_LoadFailure(this.failure);

  @override
  final UserFailure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState.loadFailure(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState.loadFailure'))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadFailure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) initial,
    required TResult Function(UserFailure failure) loadFailure,
    required TResult Function(User user) loadSuccess,
    required TResult Function(UserFailure failure) updateFailure,
    required TResult Function(User user) updateSuccess,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? initial,
    TResult Function(UserFailure failure)? loadFailure,
    TResult Function(User user)? loadSuccess,
    TResult Function(UserFailure failure)? updateFailure,
    TResult Function(User user)? updateSuccess,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? initial,
    TResult Function(UserFailure failure)? loadFailure,
    TResult Function(User user)? loadSuccess,
    TResult Function(UserFailure failure)? updateFailure,
    TResult Function(User user)? updateSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
    required TResult Function(_UpdateSuccess value) updateSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements UserState {
  const factory _LoadFailure(UserFailure failure) = _$_LoadFailure;

  UserFailure get failure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$LoadSuccessCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(LoadSuccess(
      user == freezed
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

class _$LoadSuccess with DiagnosticableTreeMixin implements LoadSuccess {
  const _$LoadSuccess(this.user);

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState.loadSuccess(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState.loadSuccess'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadSuccess &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) initial,
    required TResult Function(UserFailure failure) loadFailure,
    required TResult Function(User user) loadSuccess,
    required TResult Function(UserFailure failure) updateFailure,
    required TResult Function(User user) updateSuccess,
  }) {
    return loadSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? initial,
    TResult Function(UserFailure failure)? loadFailure,
    TResult Function(User user)? loadSuccess,
    TResult Function(UserFailure failure)? updateFailure,
    TResult Function(User user)? updateSuccess,
  }) {
    return loadSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? initial,
    TResult Function(UserFailure failure)? loadFailure,
    TResult Function(User user)? loadSuccess,
    TResult Function(UserFailure failure)? updateFailure,
    TResult Function(User user)? updateSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
    required TResult Function(_UpdateSuccess value) updateSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements UserState {
  const factory LoadSuccess(User user) = _$LoadSuccess;

  User get user;
  @JsonKey(ignore: true)
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateFailureCopyWith<$Res> {
  factory _$UpdateFailureCopyWith(
          _UpdateFailure value, $Res Function(_UpdateFailure) then) =
      __$UpdateFailureCopyWithImpl<$Res>;
  $Res call({UserFailure failure});

  $UserFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$UpdateFailureCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$UpdateFailureCopyWith<$Res> {
  __$UpdateFailureCopyWithImpl(
      _UpdateFailure _value, $Res Function(_UpdateFailure) _then)
      : super(_value, (v) => _then(v as _UpdateFailure));

  @override
  _UpdateFailure get _value => super._value as _UpdateFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_UpdateFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as UserFailure,
    ));
  }

  @override
  $UserFailureCopyWith<$Res> get failure {
    return $UserFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_UpdateFailure with DiagnosticableTreeMixin implements _UpdateFailure {
  const _$_UpdateFailure(this.failure);

  @override
  final UserFailure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState.updateFailure(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState.updateFailure'))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateFailure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$UpdateFailureCopyWith<_UpdateFailure> get copyWith =>
      __$UpdateFailureCopyWithImpl<_UpdateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) initial,
    required TResult Function(UserFailure failure) loadFailure,
    required TResult Function(User user) loadSuccess,
    required TResult Function(UserFailure failure) updateFailure,
    required TResult Function(User user) updateSuccess,
  }) {
    return updateFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? initial,
    TResult Function(UserFailure failure)? loadFailure,
    TResult Function(User user)? loadSuccess,
    TResult Function(UserFailure failure)? updateFailure,
    TResult Function(User user)? updateSuccess,
  }) {
    return updateFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? initial,
    TResult Function(UserFailure failure)? loadFailure,
    TResult Function(User user)? loadSuccess,
    TResult Function(UserFailure failure)? updateFailure,
    TResult Function(User user)? updateSuccess,
    required TResult orElse(),
  }) {
    if (updateFailure != null) {
      return updateFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
    required TResult Function(_UpdateSuccess value) updateSuccess,
  }) {
    return updateFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
  }) {
    return updateFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    required TResult orElse(),
  }) {
    if (updateFailure != null) {
      return updateFailure(this);
    }
    return orElse();
  }
}

abstract class _UpdateFailure implements UserState {
  const factory _UpdateFailure(UserFailure failure) = _$_UpdateFailure;

  UserFailure get failure;
  @JsonKey(ignore: true)
  _$UpdateFailureCopyWith<_UpdateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateSuccessCopyWith<$Res> {
  factory _$UpdateSuccessCopyWith(
          _UpdateSuccess value, $Res Function(_UpdateSuccess) then) =
      __$UpdateSuccessCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$UpdateSuccessCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$UpdateSuccessCopyWith<$Res> {
  __$UpdateSuccessCopyWithImpl(
      _UpdateSuccess _value, $Res Function(_UpdateSuccess) _then)
      : super(_value, (v) => _then(v as _UpdateSuccess));

  @override
  _UpdateSuccess get _value => super._value as _UpdateSuccess;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_UpdateSuccess(
      user == freezed
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

class _$_UpdateSuccess with DiagnosticableTreeMixin implements _UpdateSuccess {
  const _$_UpdateSuccess(this.user);

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState.updateSuccess(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState.updateSuccess'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateSuccess &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$UpdateSuccessCopyWith<_UpdateSuccess> get copyWith =>
      __$UpdateSuccessCopyWithImpl<_UpdateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) initial,
    required TResult Function(UserFailure failure) loadFailure,
    required TResult Function(User user) loadSuccess,
    required TResult Function(UserFailure failure) updateFailure,
    required TResult Function(User user) updateSuccess,
  }) {
    return updateSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? initial,
    TResult Function(UserFailure failure)? loadFailure,
    TResult Function(User user)? loadSuccess,
    TResult Function(UserFailure failure)? updateFailure,
    TResult Function(User user)? updateSuccess,
  }) {
    return updateSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? initial,
    TResult Function(UserFailure failure)? loadFailure,
    TResult Function(User user)? loadSuccess,
    TResult Function(UserFailure failure)? updateFailure,
    TResult Function(User user)? updateSuccess,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
    required TResult Function(_UpdateSuccess value) updateSuccess,
  }) {
    return updateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
  }) {
    return updateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateSuccess implements UserState {
  const factory _UpdateSuccess(User user) = _$_UpdateSuccess;

  User get user;
  @JsonKey(ignore: true)
  _$UpdateSuccessCopyWith<_UpdateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
