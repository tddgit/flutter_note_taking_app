part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required EmailAddress email,
    required Password password,
    required bool isSubmiting,
    required Either<AuthFailure, Unit> authFailureOrSuccess,
  }) = _SignInFormState;
}
