import 'package:dartz/dartz.dart';
import 'package:dentist_appointment_app/application/user/user_state.dart';
import 'package:dentist_appointment_app/domain/auth/user.dart';
import 'package:dentist_appointment_app/domain/user/i_user_repository.dart';
import 'package:dentist_appointment_app/domain/user/user_failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserStateNotifier extends StateNotifier<UserState> {
  UserStateNotifier(User user, this._repository)
      : super(UserState.initial(user));

  final IUserRepository _repository;

  Future<void> initialized() async {
    _repository.fetchData().listen((failureOrUser) => failureOrUser.fold(
          (failure) {
            state = UserState.loadFailure(failure);
            // return left(failure);
          },
          (user) {
            state = UserState.loadSuccess(user);
          },
        ));
  }

  Future<Either<UserFailure, Unit>> update(User user) async {
    final possibleFailure = await _repository.update(user);
    return possibleFailure.fold((failure) {
      state = UserState.updateFailure(failure);
      return left(failure);
    }, (_) {
      state = UserState.updateSuccess(user);
      return right(unit);
    });
  }
}
