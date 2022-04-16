import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:dentist_appointment_app/application/service/service_list_state.dart';
import 'package:dentist_appointment_app/domain/service/i_service_repository.dart';
import 'package:dentist_appointment_app/domain/service/service.dart';
import 'package:dentist_appointment_app/domain/service/service_failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ServiceListStateNotifier extends StateNotifier<ServiceListState> {
  ServiceListStateNotifier(this._repository)
      : super(const ServiceListState.initial());

  final IServiceRepository _repository;
  StreamSubscription<Either<ServiceFailure, List<Service>>>?
      _serviceStreamSubscription;

  Future<void> fetchData() async {
    state = const ServiceListState.loadInProgress();
    await _serviceStreamSubscription?.cancel();
    _serviceStreamSubscription =
        _repository.fetchData().listen((failureOrServices) {
      state = ServiceListState.serviceReceived(failureOrServices);
      servicesReceive();
    });
  }

  void servicesReceive() {
    state.maybeWhen(
        serviceReceived: ((failureOrServices) {
          failureOrServices.fold(
              (failure) => state = ServiceListState.loadFailure(failure),
              (services) => state = ServiceListState.loadSuccess(services));
        }),
        orElse: () {});
  }

  Future<void> delete(Service service) async {
    state = const ServiceListState.actionInProgress();
    final possibleFailure = await _repository.delete(service);
    possibleFailure.fold(
      (failure) => state = ServiceListState.deleteFailure(failure),
      (_) => state = const ServiceListState.deleteSuccess(),
    );
  }

  @override
  void dispose() async {
    await _serviceStreamSubscription?.cancel();
    super.dispose();
  }
}
