

import 'package:kios/3_domain/core/failures.dart';

class UnAuthenticatedError extends Error {
  
}


class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation = 'Encountered a ValueFailure at an unrecoverable point. Terminating.';

    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}