import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment.freezed.dart';
part 'appointment.g.dart';

@freezed
class Appointment with _$Appointment {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Appointment({
    required String id,
    required DateTime dateTime,
    required String patientUid,
    required String dentistUid,
  }) = _Appointment;
  


  factory Appointment.fromJson(Map<String, dynamic> json) =>
      _$AppointmentFromJson(json);
}
