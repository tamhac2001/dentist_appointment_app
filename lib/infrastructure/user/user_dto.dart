import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dentist_appointment_app/domain/auth/value_objects.dart';
import 'package:dentist_appointment_app/domain/user/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../application/utils/enums.dart';
import '../../domain/auth/user.dart';

part 'user_dto.freezed.dart';

part 'user_dto.g.dart';

@freezed
class UserDTO with _$UserDTO {
  const UserDTO._();

  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory UserDTO({
    @JsonKey(ignore: true) String? uid,
    required String email,
    required String fullName,
    required String phoneNumber,
    required Gender gender,
    required String avatarUrl,
    required Map<String, dynamic> medicalRecord,
    required List<String> appointmentsId,
    required bool isPatient,
    required bool isDentist,
  }) = _UserDTO;

  factory UserDTO.initial(String email) {
    return UserDTO.fromDomain(User.initial()).copyWith(
      email: email,
    );
  }

  factory UserDTO.fromDomain(User user) {
    return UserDTO(
      uid: user.uid.getOrCrash(),
      email: user.email.getOrCrash(),
      fullName: user.fullName.getOrCrash(),
      phoneNumber: user.phoneNumber.getOrCrash(),
      gender: user.gender,
      avatarUrl: user.avatarUrl,
      medicalRecord: user.medicalRecord,
      appointmentsId: user.appointmentsId.map((id) => id.getOrCrash()).toList(),
      isPatient: user.isPatient,
      isDentist: user.isDentist,
    );
  }

  User toDomain() {
    return User(
      uid: UniqueId.fromUniqueString(uid!),
      email: EmailAddress(email),
      fullName: FullName(fullName),
      phoneNumber: PhoneNumber(phoneNumber),
      avatarUrl: avatarUrl,
      gender: gender,
      appointmentsId:
          appointmentsId.map((id) => UniqueId.fromUniqueString(id)).toList(),
      medicalRecord: medicalRecord,
      isDentist: isDentist,
      isPatient: isPatient,
    );
  }

  factory UserDTO.fromFireStore(DocumentSnapshot snapshot) {
    return UserDTO.fromJson(snapshot.data() as Map<String, dynamic>)
        .copyWith(uid: snapshot.id);
  }

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);
}
