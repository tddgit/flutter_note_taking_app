import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_note_taking_app/domain/auth/auth_failure.dart';
import 'package:flutter_note_taking_app/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_form_bloc.freezed.dart';

part 'sign_in_form_event.dart';

part 'sign_in_form_state.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  SignInFormBloc({
    required this.email,
    required this.password,
    required this.isSubmiting,
    required this.authFailureOrSuccess,
  }) : super(SignInFormState(
          email: email,
          password: password,
          isSubmiting: isSubmiting,
          authFailureOrSuccessOption: authFailureOrSuccess,
        ));

  EmailAddress email;
  Password password;
  bool isSubmiting;
  Option<Either<AuthFailure, Unit>> authFailureOrSuccess;

  @override
  Stream<SignInFormState> mapEventToState(SignInFormEvent event) async* {
    // TODO: Add your event logic
  }
}
