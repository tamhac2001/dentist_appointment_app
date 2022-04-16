// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDTO _$UserDTOFromJson(Map<String, dynamic> json) {
  return _UserDTO.fromJson(json);
}

/// @nodoc
class _$UserDTOTearOff {
  const _$UserDTOTearOff();

  _UserDTO call(
      {@JsonKey(ignore: true) String? uid,
      required String email,
      required String fullName,
      required String phoneNumber,
      required Gender gender,
      required String avatarUrl,
      required Map<String, dynamic> medicalRecord,
      required List<String> appointmentsId,
      required bool isPatient,
      required bool isDentist}) {
    return _UserDTO(
      uid: uid,
      email: email,
      fullName: fullName,
      phoneNumber: phoneNumber,
      gender: gender,
      avatarUrl: avatarUrl,
      medicalRecord: medicalRecord,
      appointmentsId: appointmentsId,
      isPatient: isPatient,
      isDentist: isDentist,
    );
  }

  UserDTO fromJson(Map<String, Object?> json) {
    return UserDTO.fromJson(json);
  }
}

/// @nodoc
const $UserDTO = _$UserDTOTearOff();

/// @nodoc
mixin _$UserDTO {
  @JsonKey(ignore: true)
  String? get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;
  Map<String, dynamic> get medicalRecord => throw _privateConstructorUsedError;
  List<String> get appointmentsId => throw _privateConstructorUsedError;
  bool get isPatient => throw _privateConstructorUsedError;
  bool get isDentist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDTOCopyWith<UserDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDTOCopyWith<$Res> {
  factory $UserDTOCopyWith(UserDTO value, $Res Function(UserDTO) then) =
      _$UserDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? uid,
      String email,
      String fullName,
      String phoneNumber,
      Gender gender,
      String avatarUrl,
      Map<String, dynamic> medicalRecord,
      List<String> appointmentsId,
      bool isPatient,
      bool isDentist});
}

/// @nodoc
class _$UserDTOCopyWithImpl<$Res> implements $UserDTOCopyWith<$Res> {
  _$UserDTOCopyWithImpl(this._value, this._then);

  final UserDTO _value;
  // ignore: unused_field
  final $Res Function(UserDTO) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? fullName = freezed,
    Object? phoneNumber = freezed,
    Object? gender = freezed,
    Object? avatarUrl = freezed,
    Object? medicalRecord = freezed,
    Object? appointmentsId = freezed,
    Object? isPatient = freezed,
    Object? isDentist = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      medicalRecord: medicalRecord == freezed
          ? _value.medicalRecord
          : medicalRecord // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      appointmentsId: appointmentsId == freezed
          ? _value.appointmentsId
          : appointmentsId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isPatient: isPatient == freezed
          ? _value.isPatient
          : isPatient // ignore: cast_nullable_to_non_nullable
              as bool,
      isDentist: isDentist == freezed
          ? _value.isDentist
          : isDentist // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$UserDTOCopyWith<$Res> implements $UserDTOCopyWith<$Res> {
  factory _$UserDTOCopyWith(_UserDTO value, $Res Function(_UserDTO) then) =
      __$UserDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? uid,
      String email,
      String fullName,
      String phoneNumber,
      Gender gender,
      String avatarUrl,
      Map<String, dynamic> medicalRecord,
      List<String> appointmentsId,
      bool isPatient,
      bool isDentist});
}

/// @nodoc
class __$UserDTOCopyWithImpl<$Res> extends _$UserDTOCopyWithImpl<$Res>
    implements _$UserDTOCopyWith<$Res> {
  __$UserDTOCopyWithImpl(_UserDTO _value, $Res Function(_UserDTO) _then)
      : super(_value, (v) => _then(v as _UserDTO));

  @override
  _UserDTO get _value => super._value as _UserDTO;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? fullName = freezed,
    Object? phoneNumber = freezed,
    Object? gender = freezed,
    Object? avatarUrl = freezed,
    Object? medicalRecord = freezed,
    Object? appointmentsId = freezed,
    Object? isPatient = freezed,
    Object? isDentist = freezed,
  }) {
    return _then(_UserDTO(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      medicalRecord: medicalRecord == freezed
          ? _value.medicalRecord
          : medicalRecord // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      appointmentsId: appointmentsId == freezed
          ? _value.appointmentsId
          : appointmentsId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isPatient: isPatient == freezed
          ? _value.isPatient
          : isPatient // ignore: cast_nullable_to_non_nullable
              as bool,
      isDentist: isDentist == freezed
          ? _value.isDentist
          : isDentist // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_UserDTO extends _UserDTO {
  const _$_UserDTO(
      {@JsonKey(ignore: true) this.uid,
      required this.email,
      required this.fullName,
      required this.phoneNumber,
      required this.gender,
      required this.avatarUrl,
      required this.medicalRecord,
      required this.appointmentsId,
      required this.isPatient,
      required this.isDentist})
      : super._();

  factory _$_UserDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserDTOFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? uid;
  @override
  final String email;
  @override
  final String fullName;
  @override
  final String phoneNumber;
  @override
  final Gender gender;
  @override
  final String avatarUrl;
  @override
  final Map<String, dynamic> medicalRecord;
  @override
  final List<String> appointmentsId;
  @override
  final bool isPatient;
  @override
  final bool isDentist;

  @override
  String toString() {
    return 'UserDTO(uid: $uid, email: $email, fullName: $fullName, phoneNumber: $phoneNumber, gender: $gender, avatarUrl: $avatarUrl, medicalRecord: $medicalRecord, appointmentsId: $appointmentsId, isPatient: $isPatient, isDentist: $isDentist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDTO &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.avatarUrl, avatarUrl) &&
            const DeepCollectionEquality()
                .equals(other.medicalRecord, medicalRecord) &&
            const DeepCollectionEquality()
                .equals(other.appointmentsId, appointmentsId) &&
            const DeepCollectionEquality().equals(other.isPatient, isPatient) &&
            const DeepCollectionEquality().equals(other.isDentist, isDentist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(avatarUrl),
      const DeepCollectionEquality().hash(medicalRecord),
      const DeepCollectionEquality().hash(appointmentsId),
      const DeepCollectionEquality().hash(isPatient),
      const DeepCollectionEquality().hash(isDentist));

  @JsonKey(ignore: true)
  @override
  _$UserDTOCopyWith<_UserDTO> get copyWith =>
      __$UserDTOCopyWithImpl<_UserDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDTOToJson(this);
  }
}

abstract class _UserDTO extends UserDTO {
  const factory _UserDTO(
      {@JsonKey(ignore: true) String? uid,
      required String email,
      required String fullName,
      required String phoneNumber,
      required Gender gender,
      required String avatarUrl,
      required Map<String, dynamic> medicalRecord,
      required List<String> appointmentsId,
      required bool isPatient,
      required bool isDentist}) = _$_UserDTO;
  const _UserDTO._() : super._();

  factory _UserDTO.fromJson(Map<String, dynamic> json) = _$_UserDTO.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get uid;
  @override
  String get email;
  @override
  String get fullName;
  @override
  String get phoneNumber;
  @override
  Gender get gender;
  @override
  String get avatarUrl;
  @override
  Map<String, dynamic> get medicalRecord;
  @override
  List<String> get appointmentsId;
  @override
  bool get isPatient;
  @override
  bool get isDentist;
  @override
  @JsonKey(ignore: true)
  _$UserDTOCopyWith<_UserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
