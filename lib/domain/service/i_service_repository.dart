import 'package:dartz/dartz.dart';
import 'package:dentist_appointment_app/domain/service/service.dart';
import 'package:dentist_appointment_app/domain/service/service_failure.dart';

abstract class IServiceRepository {
  Stream<Either<ServiceFailure, List<Service>>> fetchData();
  Future<Either<ServiceFailure, Unit>> create(Service service);
  Future<Either<ServiceFailure, Unit>> update(Service service);
  Future<Either<ServiceFailure, Unit>> delete(Service service);

}
