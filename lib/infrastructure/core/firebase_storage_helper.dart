import 'package:dentist_appointment_app/domain/auth/i_auth_facade.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../../domain/core/errors.dart';

extension FirebaseStorageX on FirebaseStorage{
  Reference currentUserAvatar(IAuthFacade authFacade){
    final userOption = authFacade.getSignInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return ref('users').child(user.uid.getOrCrash()).child('avatar');
  }
}