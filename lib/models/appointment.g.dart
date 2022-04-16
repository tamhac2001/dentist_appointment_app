// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Appointment _$$_AppointmentFromJson(Map<String, dynamic> json) =>
    _$_Appointment(
      id: json['id'] as String,
      dateTime: DateTime.parse(json['date_time'] as String),
      patientUid: json['patient_uid'] as String,
      dentistUid: json['dentist_uid'] as String,
    );

Map<String, dynamic> _$$_AppointmentToJson(_$_Appointment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date_time': instance.dateTime.toIso8601String(),
      'patient_uid': instance.patientUid,
      'dentist_uid': instance.dentistUid,
    };
