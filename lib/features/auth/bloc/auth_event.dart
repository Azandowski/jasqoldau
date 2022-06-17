part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const AuthEvent._();
  const factory AuthEvent.logout() = AuthLogout;
  const factory AuthEvent.userChanged(User user) = AuthUserChanged;
}
