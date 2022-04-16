import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:decimal/decimal.dart';
import 'package:dentist_appointment_app/domain/auth/value_objects.dart';
import 'package:dentist_appointment_app/domain/service/service.dart';
import 'package:dentist_appointment_app/domain/service/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_dto.freezed.dart';

part 'service_dto.g.dart';

@freezed
class ServiceDTO with _$ServiceDTO {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const ServiceDTO._();

  const factory ServiceDTO({
    @JsonKey(ignore: true) String? id,
    required String name,
    required String description,
    required Decimal price,
    required int timeOfUse,
  }) = _ServiceDTO;

  factory ServiceDTO.fromDomain(Service service) {
    return ServiceDTO(
        id: service.id.getOrCrash(),
        name: service.name.getOrCrash(),
        description: service.description.getOrCrash(),
        price: service.price,
        timeOfUse: service.timeOfUse);
  }

  Service toDomain() {
    return Service(
        id: UniqueId.fromUniqueString(id!),
        name: ServiceName(name),
        description: ServiceDescription(description),
        price: price,
        timeOfUse: timeOfUse);
  }

  factory ServiceDTO.fromFirestore(DocumentSnapshot doc) {
    return ServiceDTO.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }

  factory ServiceDTO.fromJson(Map<String, dynamic> json) =>
      _$ServiceDTOFromJson(json);
}
