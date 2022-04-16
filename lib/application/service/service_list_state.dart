import 'package:dartz/dartz.dart';
import 'package:dentist_appointment_app/domain/service/service_failure.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/service/service.dart';

part 'service_list_state.freezed.dart';

@freezed
class ServiceListState with _$ServiceListState {
  const factory ServiceListState.initial() = Initial;

  const factory ServiceListState.loadInProgress() = LoadInProgress;

  const factory ServiceListState.serviceReceived(
      Either<ServiceFailure, List<Service>> failureOrServices) = ServiceReceived;

  const factory ServiceListState.loadSuccess(List<Service> services) =
      LoadSuccess;

  const factory ServiceListState.loadFailure(ServiceFailure serviceFailure) =
      LoadFailure;

  const factory ServiceListState.actionInProgress() = ActionInProgress;

  const factory ServiceListState.deleteFailure(ServiceFailure serviceFailure) =
      DeleteFailure;

  const factory ServiceListState.deleteSuccess() = DeleteSuccess;
}
