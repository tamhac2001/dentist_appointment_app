import 'package:dentist_appointment_app/domain/auth/user.dart' as domain;
import 'package:dentist_appointment_app/domain/auth/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension UserDomainX on User {
  domain.User toDomain() {
    return domain.User.initial().copyWith(
     uid: UniqueId.fromUniqueString(uid),
     email: EmailAddress(email!),
    );

  }
}
