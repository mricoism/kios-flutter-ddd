import 'package:fpdart/fpdart.dart';
import 'package:kios/3_domain/core/errors.dart';
import 'package:kios/3_domain/core/failures.dart';

abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), (r) => r);
  }

  T? getOrNull() {
    return value.fold((l) => null, (r) => r);
  }

  Either<ValueFailure<T>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (r) => right(unit));
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';


}
