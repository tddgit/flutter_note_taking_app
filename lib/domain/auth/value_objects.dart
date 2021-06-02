// ignore: import_of_legacy_library_into_null_safe
import 'package:dartz/dartz.dart';
import 'package:flutter_note_taking_app/domain/core/failures.dart';
import 'package:flutter_note_taking_app/domain/core/value_objects.dart';
import 'package:flutter_note_taking_app/domain/core/value_validators.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// Email Address data class
@immutable
//ignore: avoid_implementing_value_types
class EmailAddress implements ValueObjects<String> {
  /// Factory constructor
  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }

  /// Private constructor
  const EmailAddress._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}

/// Password data class
//ignore: avoid_implementing_value_types
class Password implements ValueObjects<String> {
  /// Factory constructor
  factory Password(String input) {
    return Password._(validatePassword(input));
  }

  ///Private constructor
  const Password._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
