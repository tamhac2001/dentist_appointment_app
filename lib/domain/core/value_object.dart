import 'package:dartz/dartz.dart';
import 'package:dentist_appointment_app/domain/core/errors.dart';
import 'package:dentist_appointment_app/domain/core/value_failure.dart';

abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  bool isValid() => value.isRight();

  /// Throw [UnexpectedValueError] contains [ValueFailure]
  T getOrCrash(){
    // id = identify - same as writing (r) => r;
    return value.fold((l) => throw UnexpectedValueError(l), id);
  }

  Either<ValueFailure<dynamic>,Unit> get failureOrUnit{
    return value.fold((failure) => left(failure), (_) => right(unit));
  }



  @override
  String toString() {
    return 'ValueObject{$value}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ValueObject && runtimeType == other.runtimeType;

  @override
  int get hashCode => value.hashCode;
}
