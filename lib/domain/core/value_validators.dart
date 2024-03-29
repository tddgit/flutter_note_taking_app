import 'package:dartz/dartz.dart';

import 'failures.dart';

/// Validating email through  matching to regex
Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const String emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure<String>.invalidEmail(failedValue: input));
  }
}

/// Validating email through  matching to regex
Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure<String>.invalidEmail(failedValue: input));
  }
}
