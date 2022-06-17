part of 'auth_bloc.dart';

enum AppStatus {
  authenticated,
  unauthenticated,
}

@freezed
abstract class AuthState implements _$AuthState {
  const AuthState._();

  const factory AuthState.authenticated({
    required User user,
    required AppStatus status,
  }) = _AuthAuthenticated;

  const factory AuthState.unauthenticated({
    required AppStatus status,
    required User user,
  }) = _AuthUnauthenticated;
}
