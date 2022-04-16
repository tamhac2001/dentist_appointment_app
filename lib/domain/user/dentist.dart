import 'package:dentist_appointment_app/domain/auth/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dentist.freezed.dart';

@freezed
class Dentist with _$Dentist {
  const factory Dentist(User user) = _Dentist;
}
