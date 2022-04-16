// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'service_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServiceDTO _$ServiceDTOFromJson(Map<String, dynamic> json) {
  return _ServiceDTO.fromJson(json);
}

/// @nodoc
class _$ServiceDTOTearOff {
  const _$ServiceDTOTearOff();

  _ServiceDTO call(
      {@JsonKey(ignore: true) String? id,
      required String name,
      required String description,
      required Decimal price,
      required int timeOfUse}) {
    return _ServiceDTO(
      id: id,
      name: name,
      description: description,
      price: price,
      timeOfUse: timeOfUse,
    );
  }

  ServiceDTO fromJson(Map<String, Object?> json) {
    return ServiceDTO.fromJson(json);
  }
}

/// @nodoc
const $ServiceDTO = _$ServiceDTOTearOff();

/// @nodoc
mixin _$ServiceDTO {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Decimal get price => throw _privateConstructorUsedError;
  int get timeOfUse => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceDTOCopyWith<ServiceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceDTOCopyWith<$Res> {
  factory $ServiceDTOCopyWith(
          ServiceDTO value, $Res Function(ServiceDTO) then) =
      _$ServiceDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String name,
      String description,
      Decimal price,
      int timeOfUse});
}

/// @nodoc
class _$ServiceDTOCopyWithImpl<$Res> implements $ServiceDTOCopyWith<$Res> {
  _$ServiceDTOCopyWithImpl(this._value, this._then);

  final ServiceDTO _value;
  // ignore: unused_field
  final $Res Function(ServiceDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? timeOfUse = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      timeOfUse: timeOfUse == freezed
          ? _value.timeOfUse
          : timeOfUse // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ServiceDTOCopyWith<$Res> implements $ServiceDTOCopyWith<$Res> {
  factory _$ServiceDTOCopyWith(
          _ServiceDTO value, $Res Function(_ServiceDTO) then) =
      __$ServiceDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String name,
      String description,
      Decimal price,
      int timeOfUse});
}

/// @nodoc
class __$ServiceDTOCopyWithImpl<$Res> extends _$ServiceDTOCopyWithImpl<$Res>
    implements _$ServiceDTOCopyWith<$Res> {
  __$ServiceDTOCopyWithImpl(
      _ServiceDTO _value, $Res Function(_ServiceDTO) _then)
      : super(_value, (v) => _then(v as _ServiceDTO));

  @override
  _ServiceDTO get _value => super._value as _ServiceDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? timeOfUse = freezed,
  }) {
    return _then(_ServiceDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Decimal,
      timeOfUse: timeOfUse == freezed
          ? _value.timeOfUse
          : timeOfUse // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServiceDTO extends _ServiceDTO {
  const _$_ServiceDTO(
      {@JsonKey(ignore: true) this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.timeOfUse})
      : super._();

  factory _$_ServiceDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceDTOFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String name;
  @override
  final String description;
  @override
  final Decimal price;
  @override
  final int timeOfUse;

  @override
  String toString() {
    return 'ServiceDTO(id: $id, name: $name, description: $description, price: $price, timeOfUse: $timeOfUse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ServiceDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.timeOfUse, timeOfUse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(timeOfUse));

  @JsonKey(ignore: true)
  @override
  _$ServiceDTOCopyWith<_ServiceDTO> get copyWith =>
      __$ServiceDTOCopyWithImpl<_ServiceDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceDTOToJson(this);
  }
}

abstract class _ServiceDTO extends ServiceDTO {
  const factory _ServiceDTO(
      {@JsonKey(ignore: true) String? id,
      required String name,
      required String description,
      required Decimal price,
      required int timeOfUse}) = _$_ServiceDTO;
  const _ServiceDTO._() : super._();

  factory _ServiceDTO.fromJson(Map<String, dynamic> json) =
      _$_ServiceDTO.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get name;
  @override
  String get description;
  @override
  Decimal get price;
  @override
  int get timeOfUse;
  @override
  @JsonKey(ignore: true)
  _$ServiceDTOCopyWith<_ServiceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
