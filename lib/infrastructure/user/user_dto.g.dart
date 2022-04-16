// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDTO _$$_UserDTOFromJson(Map<String, dynamic> json) => _$_UserDTO(
      email: json['email'] as String,
      fullName: json['full_name'] as String,
      phoneNumber: json['phone_number'] as String,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      avatarUrl: json['avatar_url'] as String,
      medicalRecord: json['medical_record'] as Map<String, dynamic>,
      appointmentsId: (json['appointments_id'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      isPatient: json['is_patient'] as bool,
      isDentist: json['is_dentist'] as bool,
    );

Map<String, dynamic> _$$_UserDTOToJson(_$_UserDTO instance) =>
    <String, dynamic>{
      'email': instance.email,
      'full_name': instance.fullName,
      'phone_number': instance.phoneNumber,
      'gender': _$GenderEnumMap[instance.gender],
      'avatar_url': instance.avatarUrl,
      'medical_record': instance.medicalRecord,
      'appointments_id': instance.appointmentsId,
      'is_patient': instance.isPatient,
      'is_dentist': instance.isDentist,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.others: 'others',
};
