import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dentist_appointment_app/domain/auth/i_auth_facade.dart';
import 'package:dentist_appointment_app/domain/core/errors.dart';
import 'package:dentist_appointment_app/infrastructure/service/service_dto.dart';
import 'package:dentist_appointment_app/infrastructure/user/user_dto.dart';

extension FirebaseFirestoreX on FirebaseFirestore {
  CollectionReference<ServiceDTO> get servicesCollection =>
      collection('services').withConverter<ServiceDTO>(
          fromFirestore: (snapshot, _) => ServiceDTO.fromFirestore(snapshot),
          toFirestore: (serviceDTO, _) => serviceDTO.toJson());

  CollectionReference<UserDTO> get usersCollection =>
      collection('users').withConverter(
          fromFirestore: (snapshot, _) => UserDTO.fromFireStore(snapshot),
          toFirestore: (userDTO, _) => userDTO.toJson());

  DocumentReference<UserDTO> currentUserDocument(IAuthFacade authFacade) {
    final userOption = authFacade.getSignInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return usersCollection.doc(user.uid.getOrCrash());
  }
}
// extension DocumentReferenceX on DocumentReference{
//   CollectionReference get servicesCollection =>
// }
