part of 'auth_bloc.dart';

enum AppStatus {
  unknown,
  authenticated,
  unauthenticated,
}

@freezed
abstract class AuthState implements _$AuthState {
  const AuthState._();

  const factory AuthState.unknown({
    @Default(AppStatus.unknown) AppStatus status,
    @Default(User.empty) user,
  }) = _AuthUnknown;

  const factory AuthState.authenticated({
    required User user,
    @Default(AppStatus.authenticated) AppStatus status,
  }) = _AuthAuthenticated;

  const factory AuthState.unauthenticated({
    @Default(AppStatus.unauthenticated) AppStatus status,
    required User user,
  }) = _AuthUnauthenticated;
}

extension AuthStateExt on AuthState {
  User get user => map(
        unknown: (t) => t.user,
        authenticated: (t) => t.user,
        unauthenticated: (t) => t.user,
      );
}
