part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged(String email) = EmailChanged;

  const factory SignInFormEvent.passwordChanged(String email) = PasswordChanged;

  const factory SignInFormEvent.registerWithEmailAndPasswordPressed(
      String email) = RegisterWithEmailAndPasswordPressed;

  const factory SignInFormEvent.signInWithEmailAndPasswordPressed(
      String email) = SignInWithEmailAndPasswordPressed;

  const factory SignInFormEvent.signInWithGooglePressed(String email) =
      SignInWithGooglePressed;
}
