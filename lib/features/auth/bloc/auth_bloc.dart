import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebaseAuth;
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zhasqoldau/features/auth/repository/auth_repository.dart';
import '../repository/user.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthenticationRepository repository;
  AuthBloc({ required this.repository}) : super(
    repository.currentUser.isNotEmpty
              ? AuthState.authenticated(user: repository.currentUser, status: AppStatus.authenticated)
              : const AuthState.unauthenticated(status: AppStatus.unauthenticated, user: User.empty),
       
  ) {
    on<AuthUserChanged>(_onUserChanged);
    on<AuthLogout>(_onLogoutRequested);
    _userSubscription = repository.user.listen(
      (user) => add(AuthUserChanged(user)),
    );
  }

  late final StreamSubscription<User> _userSubscription;

  void _onUserChanged(AuthUserChanged event, Emitter<AuthState> emit) {
    emit(
      event.user.isNotEmpty
          ? AuthState.authenticated(user: event.user, status: AppStatus.authenticated)
          : const AuthState.unauthenticated(user: User.empty, status: AppStatus.unauthenticated),
    );
  }

  void _onLogoutRequested(AuthLogout event, Emitter<AuthState> emit) {
    unawaited(repository.logOut());
  }

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
