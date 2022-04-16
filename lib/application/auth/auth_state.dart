import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/auth/user.dart';

part 'auth_state.freezed.dart';


@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;

  const factory AuthState.unauthenticated() = Unauthenticated;

  const factory AuthState.authenticated(User user) = Authenticated;
}
