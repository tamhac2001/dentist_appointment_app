import 'package:dentist_appointment_app/application/auth/auth_state.dart';
import 'package:dentist_appointment_app/domain/auth/i_auth_facade.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthStateNotifier extends StateNotifier<AuthState> {
  final IAuthFacade _authFacade;

  AuthStateNotifier(this._authFacade) : super(const AuthState.initial());

  void authCheckRequest() {
    final userOption = _authFacade.getSignInUser();
    userOption.fold(() => state = const AuthState.unauthenticated(),
        (user) => state = AuthState.authenticated(user));
  }

  void signOut() {
    _authFacade.signOut();
    state = const AuthState.unauthenticated();
  }
}
