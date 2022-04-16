import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:dentist_appointment_app/domain/service/i_service_repository.dart';
import 'package:dentist_appointment_app/domain/service/service.dart';
import 'package:dentist_appointment_app/domain/service/service_failure.dart';
import 'package:dentist_appointment_app/infrastructure/service/service_dto.dart';
import 'package:rxdart/rxdart.dart';

import '../core/firestore_helpers.dart';

class ServiceRepository implements IServiceRepository {
  final FirebaseFirestore _firestore;

  ServiceRepository(this._firestore);

  @override
  Stream<Either<ServiceFailure, List<Service>>> fetchData() async* {
    final servicesCollection = _firestore.servicesCollection;
    yield* servicesCollection.orderBy('timeOfUse').snapshots().map((snapshot) {
      return right<ServiceFailure, List<Service>>(
        snapshot.docs.map((queryDocumentSnapshot) {
          return queryDocumentSnapshot.data().toDomain();
        }).toList(),
      );
    }).onErrorReturnWith(
      (e, stackTrace) {
        if (e is FirebaseException &&
            e.message!.contains('permission-denied')) {
          return left(const ServiceFailure.insufficientPermission());
        } else {
          log('ServiceRepository fetch data' + e.toString(), error: e);
          return left(const ServiceFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<ServiceFailure, Unit>> create(Service service) async {
    try {
      final serviceDTO = ServiceDTO.fromDomain(service);
      await _firestore.servicesCollection.doc(serviceDTO.id).set(serviceDTO);
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('permission-denied')) {
        return left(const ServiceFailure.insufficientPermission());
      } else {
        log('ServiceRepository create data'+ e.toString(), error: e);
        return left(const ServiceFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ServiceFailure, Unit>> update(Service service) async {
    try {
      final serviceDTO = ServiceDTO.fromDomain(service);
      await _firestore.servicesCollection
          .doc(serviceDTO.id)
          .update(serviceDTO.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('permission-denied')) {
        return left(const ServiceFailure.insufficientPermission());
      } else if (e.message!.contains('not-found')) {
        return left(const ServiceFailure.unableToUpdate());
      } else {
        log('ServiceRepository fetch data', error: e);
        return left(const ServiceFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ServiceFailure, Unit>> delete(Service service) async {
    try {
      final serviceDTO = ServiceDTO.fromDomain(service);
      await _firestore.servicesCollection.doc(serviceDTO.id).delete();
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('permission-denied')) {
        return left(const ServiceFailure.insufficientPermission());
      } else if (e.message!.contains('not-found')) {
        return left(const ServiceFailure.unableToUpdate());
      } else {
        log('ServiceRepository fetch data', error: e);
        return left(const ServiceFailure.unexpected());
      }
    }
  }
}
