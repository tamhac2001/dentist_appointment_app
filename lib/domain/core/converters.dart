
import 'package:dentist_appointment_app/domain/service/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../auth/value_objects.dart';

class UniqueIdConverter implements JsonConverter<UniqueId, String> {
  const UniqueIdConverter();

  @override
  UniqueId fromJson(String uid) => UniqueId.fromUniqueString(uid);

  @override
  String toJson(UniqueId uid) => uid.getOrCrash();
}

class EmailAddressConverter implements JsonConverter<EmailAddress, String> {
  const EmailAddressConverter();

  @override
  EmailAddress fromJson(String email) => EmailAddress(email);

  @override
  String toJson(EmailAddress emailAddress) => emailAddress.getOrCrash();
}
class ServiceNameConverter implements JsonConverter<ServiceName, String> {
  const ServiceNameConverter();

  @override
  ServiceName fromJson(String name) => ServiceName(name);

  @override
  String toJson(ServiceName name) => name.getOrCrash();
}

class ServiceDescriptionConverter implements JsonConverter<ServiceDescription, String> {
  const ServiceDescriptionConverter();

  @override
  ServiceDescription fromJson(String name) => ServiceDescription(name);

  @override
  String toJson(ServiceDescription name) => name.getOrCrash();
}
