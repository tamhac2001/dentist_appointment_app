// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'service_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ServiceListStateTearOff {
  const _$ServiceListStateTearOff();

  Initial initial() {
    return const Initial();
  }

  LoadInProgress loadInProgress() {
    return const LoadInProgress();
  }

  ServiceReceived serviceReceived(
      Either<ServiceFailure, List<Service>> failureOrServices) {
    return ServiceReceived(
      failureOrServices,
    );
  }

  LoadSuccess loadSuccess(List<Service> services) {
    return LoadSuccess(
      services,
    );
  }

  LoadFailure loadFailure(ServiceFailure serviceFailure) {
    return LoadFailure(
      serviceFailure,
    );
  }

  ActionInProgress actionInProgress() {
    return const ActionInProgress();
  }

  DeleteFailure deleteFailure(ServiceFailure serviceFailure) {
    return DeleteFailure(
      serviceFailure,
    );
  }

  DeleteSuccess deleteSuccess() {
    return const DeleteSuccess();
  }
}

/// @nodoc
const $ServiceListState = _$ServiceListStateTearOff();

/// @nodoc
mixin _$ServiceListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            Either<ServiceFailure, List<Service>> failureOrServices)
        serviceReceived,
    required TResult Function(List<Service> services) loadSuccess,
    required TResult Function(ServiceFailure serviceFailure) loadFailure,
    required TResult Function() actionInProgress,
    required TResult Function(ServiceFailure serviceFailure) deleteFailure,
    required TResult Function() deleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Either<ServiceFailure, List<Service>> failureOrServices)?
        serviceReceived,
    TResult Function(List<Service> services)? loadSuccess,
    TResult Function(ServiceFailure serviceFailure)? loadFailure,
    TResult Function()? actionInProgress,
    TResult Function(ServiceFailure serviceFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Either<ServiceFailure, List<Service>> failureOrServices)?
        serviceReceived,
    TResult Function(List<Service> services)? loadSuccess,
    TResult Function(ServiceFailure serviceFailure)? loadFailure,
    TResult Function()? actionInProgress,
    TResult Function(ServiceFailure serviceFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(ServiceReceived value) serviceReceived,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(DeleteSuccess value) deleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(ServiceReceived value)? serviceReceived,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(ServiceReceived value)? serviceReceived,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceListStateCopyWith<$Res> {
  factory $ServiceListStateCopyWith(
          ServiceListState value, $Res Function(ServiceListState) then) =
      _$ServiceListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServiceListStateCopyWithImpl<$Res>
    implements $ServiceListStateCopyWith<$Res> {
  _$ServiceListStateCopyWithImpl(this._value, this._then);

  final ServiceListState _value;
  // ignore: unused_field
  final $Res Function(ServiceListState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$ServiceListStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial with DiagnosticableTreeMixin implements Initial {
  const _$Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceListState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ServiceListState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            Either<ServiceFailure, List<Service>> failureOrServices)
        serviceReceived,
    required TResult Function(List<Service> services) loadSuccess,
    required TResult Function(ServiceFailure serviceFailure) loadFailure,
    required TResult Function() actionInProgress,
    required TResult Function(ServiceFailure serviceFailure) deleteFailure,
    required TResult Function() deleteSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Either<ServiceFailure, List<Service>> failureOrServices)?
        serviceReceived,
    TResult Function(List<Service> services)? loadSuccess,
    TResult Function(ServiceFailure serviceFailure)? loadFailure,
    TResult Function()? actionInProgress,
    TResult Function(ServiceFailure serviceFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Either<ServiceFailure, List<Service>> failureOrServices)?
        serviceReceived,
    TResult Function(List<Service> services)? loadSuccess,
    TResult Function(ServiceFailure serviceFailure)? loadFailure,
    TResult Function()? actionInProgress,
    TResult Function(ServiceFailure serviceFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(ServiceReceived value) serviceReceived,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(DeleteSuccess value) deleteSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(ServiceReceived value)? serviceReceived,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(ServiceReceived value)? serviceReceived,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ServiceListState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadInProgressCopyWith<$Res> {
  factory $LoadInProgressCopyWith(
          LoadInProgress value, $Res Function(LoadInProgress) then) =
      _$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadInProgressCopyWithImpl<$Res>
    extends _$ServiceListStateCopyWithImpl<$Res>
    implements $LoadInProgressCopyWith<$Res> {
  _$LoadInProgressCopyWithImpl(
      LoadInProgress _value, $Res Function(LoadInProgress) _then)
      : super(_value, (v) => _then(v as LoadInProgress));

  @override
  LoadInProgress get _value => super._value as LoadInProgress;
}

/// @nodoc

class _$LoadInProgress with DiagnosticableTreeMixin implements LoadInProgress {
  const _$LoadInProgress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceListState.loadInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceListState.loadInProgress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            Either<ServiceFailure, List<Service>> failureOrServices)
        serviceReceived,
    required TResult Function(List<Service> services) loadSuccess,
    required TResult Function(ServiceFailure serviceFailure) loadFailure,
    required TResult Function() actionInProgress,
    required TResult Function(ServiceFailure serviceFailure) deleteFailure,
    required TResult Function() deleteSuccess,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Either<ServiceFailure, List<Service>> failureOrServices)?
        serviceReceived,
    TResult Function(List<Service> services)? loadSuccess,
    TResult Function(ServiceFailure serviceFailure)? loadFailure,
    TResult Function()? actionInProgress,
    TResult Function(ServiceFailure serviceFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Either<ServiceFailure, List<Service>> failureOrServices)?
        serviceReceived,
    TResult Function(List<Service> services)? loadSuccess,
    TResult Function(ServiceFailure serviceFailure)? loadFailure,
    TResult Function()? actionInProgress,
    TResult Function(ServiceFailure serviceFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(ServiceReceived value) serviceReceived,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(DeleteSuccess value) deleteSuccess,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(ServiceReceived value)? serviceReceived,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(ServiceReceived value)? serviceReceived,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class LoadInProgress implements ServiceListState {
  const factory LoadInProgress() = _$LoadInProgress;
}

/// @nodoc
abstract class $ServiceReceivedCopyWith<$Res> {
  factory $ServiceReceivedCopyWith(
          ServiceReceived value, $Res Function(ServiceReceived) then) =
      _$ServiceReceivedCopyWithImpl<$Res>;
  $Res call({Either<ServiceFailure, List<Service>> failureOrServices});
}

/// @nodoc
class _$ServiceReceivedCopyWithImpl<$Res>
    extends _$ServiceListStateCopyWithImpl<$Res>
    implements $ServiceReceivedCopyWith<$Res> {
  _$ServiceReceivedCopyWithImpl(
      ServiceReceived _value, $Res Function(ServiceReceived) _then)
      : super(_value, (v) => _then(v as ServiceReceived));

  @override
  ServiceReceived get _value => super._value as ServiceReceived;

  @override
  $Res call({
    Object? failureOrServices = freezed,
  }) {
    return _then(ServiceReceived(
      failureOrServices == freezed
          ? _value.failureOrServices
          : failureOrServices // ignore: cast_nullable_to_non_nullable
              as Either<ServiceFailure, List<Service>>,
    ));
  }
}

/// @nodoc

class _$ServiceReceived
    with DiagnosticableTreeMixin
    implements ServiceReceived {
  const _$ServiceReceived(this.failureOrServices);

  @override
  final Either<ServiceFailure, List<Service>> failureOrServices;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceListState.serviceReceived(failureOrServices: $failureOrServices)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceListState.serviceReceived'))
      ..add(DiagnosticsProperty('failureOrServices', failureOrServices));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ServiceReceived &&
            const DeepCollectionEquality()
                .equals(other.failureOrServices, failureOrServices));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrServices));

  @JsonKey(ignore: true)
  @override
  $ServiceReceivedCopyWith<ServiceReceived> get copyWith =>
      _$ServiceReceivedCopyWithImpl<ServiceReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            Either<ServiceFailure, List<Service>> failureOrServices)
        serviceReceived,
    required TResult Function(List<Service> services) loadSuccess,
    required TResult Function(ServiceFailure serviceFailure) loadFailure,
    required TResult Function() actionInProgress,
    required TResult Function(ServiceFailure serviceFailure) deleteFailure,
    required TResult Function() deleteSuccess,
  }) {
    return serviceReceived(failureOrServices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Either<ServiceFailure, List<Service>> failureOrServices)?
        serviceReceived,
    TResult Function(List<Service> services)? loadSuccess,
    TResult Function(ServiceFailure serviceFailure)? loadFailure,
    TResult Function()? actionInProgress,
    TResult Function(ServiceFailure serviceFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
  }) {
    return serviceReceived?.call(failureOrServices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Either<ServiceFailure, List<Service>> failureOrServices)?
        serviceReceived,
    TResult Function(List<Service> services)? loadSuccess,
    TResult Function(ServiceFailure serviceFailure)? loadFailure,
    TResult Function()? actionInProgress,
    TResult Function(ServiceFailure serviceFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (serviceReceived != null) {
      return serviceReceived(failureOrServices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(ServiceReceived value) serviceReceived,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(DeleteSuccess value) deleteSuccess,
  }) {
    return serviceReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(ServiceReceived value)? serviceReceived,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
  }) {
    return serviceReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(ServiceReceived value)? serviceReceived,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (serviceReceived != null) {
      return serviceReceived(this);
    }
    return orElse();
  }
}

abstract class ServiceReceived implements ServiceListState {
  const factory ServiceReceived(
          Either<ServiceFailure, List<Service>> failureOrServices) =
      _$ServiceReceived;

  Either<ServiceFailure, List<Service>> get failureOrServices;
  @JsonKey(ignore: true)
  $ServiceReceivedCopyWith<ServiceReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Service> services});
}

/// @nodoc
class _$LoadSuccessCopyWithImpl<$Res>
    extends _$ServiceListStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object? services = freezed,
  }) {
    return _then(LoadSuccess(
      services == freezed
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Service>,
    ));
  }
}

/// @nodoc

class _$LoadSuccess with DiagnosticableTreeMixin implements LoadSuccess {
  const _$LoadSuccess(this.services);

  @override
  final List<Service> services;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceListState.loadSuccess(services: $services)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceListState.loadSuccess'))
      ..add(DiagnosticsProperty('services', services));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadSuccess &&
            const DeepCollectionEquality().equals(other.services, services));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(services));

  @JsonKey(ignore: true)
  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            Either<ServiceFailure, List<Service>> failureOrServices)
        serviceReceived,
    required TResult Function(List<Service> services) loadSuccess,
    required TResult Function(ServiceFailure serviceFailure) loadFailure,
    required TResult Function() actionInProgress,
    required TResult Function(ServiceFailure serviceFailure) deleteFailure,
    required TResult Function() deleteSuccess,
  }) {
    return loadSuccess(services);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Either<ServiceFailure, List<Service>> failureOrServices)?
        serviceReceived,
    TResult Function(List<Service> services)? loadSuccess,
    TResult Function(ServiceFailure serviceFailure)? loadFailure,
    TResult Function()? actionInProgress,
    TResult Function(ServiceFailure serviceFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
  }) {
    return loadSuccess?.call(services);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Either<ServiceFailure, List<Service>> failureOrServices)?
        serviceReceived,
    TResult Function(List<Service> services)? loadSuccess,
    TResult Function(ServiceFailure serviceFailure)? loadFailure,
    TResult Function()? actionInProgress,
    TResult Function(ServiceFailure serviceFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(services);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(ServiceReceived value) serviceReceived,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(DeleteSuccess value) deleteSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(ServiceReceived value)? serviceReceived,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(ServiceReceived value)? serviceReceived,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements ServiceListState {
  const factory LoadSuccess(List<Service> services) = _$LoadSuccess;

  List<Service> get services;
  @JsonKey(ignore: true)
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({ServiceFailure serviceFailure});

  $ServiceFailureCopyWith<$Res> get serviceFailure;
}

/// @nodoc
class _$LoadFailureCopyWithImpl<$Res>
    extends _$ServiceListStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object? serviceFailure = freezed,
  }) {
    return _then(LoadFailure(
      serviceFailure == freezed
          ? _value.serviceFailure
          : serviceFailure // ignore: cast_nullable_to_non_nullable
              as ServiceFailure,
    ));
  }

  @override
  $ServiceFailureCopyWith<$Res> get serviceFailure {
    return $ServiceFailureCopyWith<$Res>(_value.serviceFailure, (value) {
      return _then(_value.copyWith(serviceFailure: value));
    });
  }
}

/// @nodoc

class _$LoadFailure with DiagnosticableTreeMixin implements LoadFailure {
  const _$LoadFailure(this.serviceFailure);

  @override
  final ServiceFailure serviceFailure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceListState.loadFailure(serviceFailure: $serviceFailure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceListState.loadFailure'))
      ..add(DiagnosticsProperty('serviceFailure', serviceFailure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadFailure &&
            const DeepCollectionEquality()
                .equals(other.serviceFailure, serviceFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(serviceFailure));

  @JsonKey(ignore: true)
  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            Either<ServiceFailure, List<Service>> failureOrServices)
        serviceReceived,
    required TResult Function(List<Service> services) loadSuccess,
    required TResult Function(ServiceFailure serviceFailure) loadFailure,
    required TResult Function() actionInProgress,
    required TResult Function(ServiceFailure serviceFailure) deleteFailure,
    required TResult Function() deleteSuccess,
  }) {
    return loadFailure(serviceFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Either<ServiceFailure, List<Service>> failureOrServices)?
        serviceReceived,
    TResult Function(List<Service> services)? loadSuccess,
    TResult Function(ServiceFailure serviceFailure)? loadFailure,
    TResult Function()? actionInProgress,
    TResult Function(ServiceFailure serviceFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
  }) {
    return loadFailure?.call(serviceFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Either<ServiceFailure, List<Service>> failureOrServices)?
        serviceReceived,
    TResult Function(List<Service> services)? loadSuccess,
    TResult Function(ServiceFailure serviceFailure)? loadFailure,
    TResult Function()? actionInProgress,
    TResult Function(ServiceFailure serviceFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(serviceFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(ServiceReceived value) serviceReceived,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(DeleteSuccess value) deleteSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(ServiceReceived value)? serviceReceived,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(ServiceReceived value)? serviceReceived,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements ServiceListState {
  const factory LoadFailure(ServiceFailure serviceFailure) = _$LoadFailure;

  ServiceFailure get serviceFailure;
  @JsonKey(ignore: true)
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionInProgressCopyWith<$Res> {
  factory $ActionInProgressCopyWith(
          ActionInProgress value, $Res Function(ActionInProgress) then) =
      _$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$ActionInProgressCopyWithImpl<$Res>
    extends _$ServiceListStateCopyWithImpl<$Res>
    implements $ActionInProgressCopyWith<$Res> {
  _$ActionInProgressCopyWithImpl(
      ActionInProgress _value, $Res Function(ActionInProgress) _then)
      : super(_value, (v) => _then(v as ActionInProgress));

  @override
  ActionInProgress get _value => super._value as ActionInProgress;
}

/// @nodoc

class _$ActionInProgress
    with DiagnosticableTreeMixin
    implements ActionInProgress {
  const _$ActionInProgress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceListState.actionInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceListState.actionInProgress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            Either<ServiceFailure, List<Service>> failureOrServices)
        serviceReceived,
    required TResult Function(List<Service> services) loadSuccess,
    required TResult Function(ServiceFailure serviceFailure) loadFailure,
    required TResult Function() actionInProgress,
    required TResult Function(ServiceFailure serviceFailure) deleteFailure,
    required TResult Function() deleteSuccess,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Either<ServiceFailure, List<Service>> failureOrServices)?
        serviceReceived,
    TResult Function(List<Service> services)? loadSuccess,
    TResult Function(ServiceFailure serviceFailure)? loadFailure,
    TResult Function()? actionInProgress,
    TResult Function(ServiceFailure serviceFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Either<ServiceFailure, List<Service>> failureOrServices)?
        serviceReceived,
    TResult Function(List<Service> services)? loadSuccess,
    TResult Function(ServiceFailure serviceFailure)? loadFailure,
    TResult Function()? actionInProgress,
    TResult Function(ServiceFailure serviceFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(ServiceReceived value) serviceReceived,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(DeleteSuccess value) deleteSuccess,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(ServiceReceived value)? serviceReceived,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(ServiceReceived value)? serviceReceived,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class ActionInProgress implements ServiceListState {
  const factory ActionInProgress() = _$ActionInProgress;
}

/// @nodoc
abstract class $DeleteFailureCopyWith<$Res> {
  factory $DeleteFailureCopyWith(
          DeleteFailure value, $Res Function(DeleteFailure) then) =
      _$DeleteFailureCopyWithImpl<$Res>;
  $Res call({ServiceFailure serviceFailure});

  $ServiceFailureCopyWith<$Res> get serviceFailure;
}

/// @nodoc
class _$DeleteFailureCopyWithImpl<$Res>
    extends _$ServiceListStateCopyWithImpl<$Res>
    implements $DeleteFailureCopyWith<$Res> {
  _$DeleteFailureCopyWithImpl(
      DeleteFailure _value, $Res Function(DeleteFailure) _then)
      : super(_value, (v) => _then(v as DeleteFailure));

  @override
  DeleteFailure get _value => super._value as DeleteFailure;

  @override
  $Res call({
    Object? serviceFailure = freezed,
  }) {
    return _then(DeleteFailure(
      serviceFailure == freezed
          ? _value.serviceFailure
          : serviceFailure // ignore: cast_nullable_to_non_nullable
              as ServiceFailure,
    ));
  }

  @override
  $ServiceFailureCopyWith<$Res> get serviceFailure {
    return $ServiceFailureCopyWith<$Res>(_value.serviceFailure, (value) {
      return _then(_value.copyWith(serviceFailure: value));
    });
  }
}

/// @nodoc

class _$DeleteFailure with DiagnosticableTreeMixin implements DeleteFailure {
  const _$DeleteFailure(this.serviceFailure);

  @override
  final ServiceFailure serviceFailure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceListState.deleteFailure(serviceFailure: $serviceFailure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceListState.deleteFailure'))
      ..add(DiagnosticsProperty('serviceFailure', serviceFailure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteFailure &&
            const DeepCollectionEquality()
                .equals(other.serviceFailure, serviceFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(serviceFailure));

  @JsonKey(ignore: true)
  @override
  $DeleteFailureCopyWith<DeleteFailure> get copyWith =>
      _$DeleteFailureCopyWithImpl<DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            Either<ServiceFailure, List<Service>> failureOrServices)
        serviceReceived,
    required TResult Function(List<Service> services) loadSuccess,
    required TResult Function(ServiceFailure serviceFailure) loadFailure,
    required TResult Function() actionInProgress,
    required TResult Function(ServiceFailure serviceFailure) deleteFailure,
    required TResult Function() deleteSuccess,
  }) {
    return deleteFailure(serviceFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Either<ServiceFailure, List<Service>> failureOrServices)?
        serviceReceived,
    TResult Function(List<Service> services)? loadSuccess,
    TResult Function(ServiceFailure serviceFailure)? loadFailure,
    TResult Function()? actionInProgress,
    TResult Function(ServiceFailure serviceFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
  }) {
    return deleteFailure?.call(serviceFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Either<ServiceFailure, List<Service>> failureOrServices)?
        serviceReceived,
    TResult Function(List<Service> services)? loadSuccess,
    TResult Function(ServiceFailure serviceFailure)? loadFailure,
    TResult Function()? actionInProgress,
    TResult Function(ServiceFailure serviceFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(serviceFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(ServiceReceived value) serviceReceived,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(DeleteSuccess value) deleteSuccess,
  }) {
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(ServiceReceived value)? serviceReceived,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
  }) {
    return deleteFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(ServiceReceived value)? serviceReceived,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class DeleteFailure implements ServiceListState {
  const factory DeleteFailure(ServiceFailure serviceFailure) = _$DeleteFailure;

  ServiceFailure get serviceFailure;
  @JsonKey(ignore: true)
  $DeleteFailureCopyWith<DeleteFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteSuccessCopyWith<$Res> {
  factory $DeleteSuccessCopyWith(
          DeleteSuccess value, $Res Function(DeleteSuccess) then) =
      _$DeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeleteSuccessCopyWithImpl<$Res>
    extends _$ServiceListStateCopyWithImpl<$Res>
    implements $DeleteSuccessCopyWith<$Res> {
  _$DeleteSuccessCopyWithImpl(
      DeleteSuccess _value, $Res Function(DeleteSuccess) _then)
      : super(_value, (v) => _then(v as DeleteSuccess));

  @override
  DeleteSuccess get _value => super._value as DeleteSuccess;
}

/// @nodoc

class _$DeleteSuccess with DiagnosticableTreeMixin implements DeleteSuccess {
  const _$DeleteSuccess();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServiceListState.deleteSuccess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServiceListState.deleteSuccess'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            Either<ServiceFailure, List<Service>> failureOrServices)
        serviceReceived,
    required TResult Function(List<Service> services) loadSuccess,
    required TResult Function(ServiceFailure serviceFailure) loadFailure,
    required TResult Function() actionInProgress,
    required TResult Function(ServiceFailure serviceFailure) deleteFailure,
    required TResult Function() deleteSuccess,
  }) {
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Either<ServiceFailure, List<Service>> failureOrServices)?
        serviceReceived,
    TResult Function(List<Service> services)? loadSuccess,
    TResult Function(ServiceFailure serviceFailure)? loadFailure,
    TResult Function()? actionInProgress,
    TResult Function(ServiceFailure serviceFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
  }) {
    return deleteSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Either<ServiceFailure, List<Service>> failureOrServices)?
        serviceReceived,
    TResult Function(List<Service> services)? loadSuccess,
    TResult Function(ServiceFailure serviceFailure)? loadFailure,
    TResult Function()? actionInProgress,
    TResult Function(ServiceFailure serviceFailure)? deleteFailure,
    TResult Function()? deleteSuccess,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(ServiceReceived value) serviceReceived,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(DeleteSuccess value) deleteSuccess,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(ServiceReceived value)? serviceReceived,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
  }) {
    return deleteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(ServiceReceived value)? serviceReceived,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class DeleteSuccess implements ServiceListState {
  const factory DeleteSuccess() = _$DeleteSuccess;
}
