import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';

import 'failures.dart';

@immutable
abstract class ValueObjects<T> {
  ///Constructor
  const ValueObjects();

  /// EmailAddress or ValueFailure
  Either<ValueFailure<T>, T> get value;

  @override
  // ignore: avoid_renaming_method_parameters
  bool operator ==(Object o) {
    if (identical(this, o)) {
      return true;
    }

    if (o is ValueObjects) {
      if (o.value == value) {
        return true;
      }
    }
    return false;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
