import 'package:dentist_appointment_app/domain/auth/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient.freezed.dart';

@freezed
class Patient with _$Patient {
  const factory Patient(User user) = _Patient;
}
