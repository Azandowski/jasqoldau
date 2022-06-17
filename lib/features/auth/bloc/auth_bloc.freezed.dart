// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logout,
    required TResult Function(User user) userChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? logout,
    TResult Function(User user)? userChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logout,
    TResult Function(User user)? userChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthUserChanged value) userChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthUserChanged value)? userChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthUserChanged value)? userChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$$AuthLogoutCopyWith<$Res> {
  factory _$$AuthLogoutCopyWith(
          _$AuthLogout value, $Res Function(_$AuthLogout) then) =
      __$$AuthLogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLogoutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$AuthLogoutCopyWith<$Res> {
  __$$AuthLogoutCopyWithImpl(
      _$AuthLogout _value, $Res Function(_$AuthLogout) _then)
      : super(_value, (v) => _then(v as _$AuthLogout));

  @override
  _$AuthLogout get _value => super._value as _$AuthLogout;
}

/// @nodoc

class _$AuthLogout extends AuthLogout with DiagnosticableTreeMixin {
  const _$AuthLogout() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.logout()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.logout'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLogout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logout,
    required TResult Function(User user) userChanged,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? logout,
    TResult Function(User user)? userChanged,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logout,
    TResult Function(User user)? userChanged,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthUserChanged value) userChanged,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthUserChanged value)? userChanged,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthUserChanged value)? userChanged,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class AuthLogout extends AuthEvent {
  const factory AuthLogout() = _$AuthLogout;
  const AuthLogout._() : super._();
}

/// @nodoc
abstract class _$$AuthUserChangedCopyWith<$Res> {
  factory _$$AuthUserChangedCopyWith(
          _$AuthUserChanged value, $Res Function(_$AuthUserChanged) then) =
      __$$AuthUserChangedCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class __$$AuthUserChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$AuthUserChangedCopyWith<$Res> {
  __$$AuthUserChangedCopyWithImpl(
      _$AuthUserChanged _value, $Res Function(_$AuthUserChanged) _then)
      : super(_value, (v) => _then(v as _$AuthUserChanged));

  @override
  _$AuthUserChanged get _value => super._value as _$AuthUserChanged;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$AuthUserChanged(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$AuthUserChanged extends AuthUserChanged with DiagnosticableTreeMixin {
  const _$AuthUserChanged(this.user) : super._();

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.userChanged(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.userChanged'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthUserChanged &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$AuthUserChangedCopyWith<_$AuthUserChanged> get copyWith =>
      __$$AuthUserChangedCopyWithImpl<_$AuthUserChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logout,
    required TResult Function(User user) userChanged,
  }) {
    return userChanged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? logout,
    TResult Function(User user)? userChanged,
  }) {
    return userChanged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logout,
    TResult Function(User user)? userChanged,
    required TResult orElse(),
  }) {
    if (userChanged != null) {
      return userChanged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthUserChanged value) userChanged,
  }) {
    return userChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthUserChanged value)? userChanged,
  }) {
    return userChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthUserChanged value)? userChanged,
    required TResult orElse(),
  }) {
    if (userChanged != null) {
      return userChanged(this);
    }
    return orElse();
  }
}

abstract class AuthUserChanged extends AuthEvent {
  const factory AuthUserChanged(final User user) = _$AuthUserChanged;
  const AuthUserChanged._() : super._();

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AuthUserChangedCopyWith<_$AuthUserChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  User get user => throw _privateConstructorUsedError;
  AppStatus get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, AppStatus status) authenticated,
    required TResult Function(AppStatus status, User user) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user, AppStatus status)? authenticated,
    TResult Function(AppStatus status, User user)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, AppStatus status)? authenticated,
    TResult Function(AppStatus status, User user)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthAuthenticated value) authenticated,
    required TResult Function(_AuthUnauthenticated value) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthAuthenticated value)? authenticated,
    TResult Function(_AuthUnauthenticated value)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthAuthenticated value)? authenticated,
    TResult Function(_AuthUnauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call({User user, AppStatus status});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthAuthenticatedCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthAuthenticatedCopyWith(_$_AuthAuthenticated value,
          $Res Function(_$_AuthAuthenticated) then) =
      __$$_AuthAuthenticatedCopyWithImpl<$Res>;
  @override
  $Res call({User user, AppStatus status});
}

/// @nodoc
class __$$_AuthAuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_AuthAuthenticatedCopyWith<$Res> {
  __$$_AuthAuthenticatedCopyWithImpl(
      _$_AuthAuthenticated _value, $Res Function(_$_AuthAuthenticated) _then)
      : super(_value, (v) => _then(v as _$_AuthAuthenticated));

  @override
  _$_AuthAuthenticated get _value => super._value as _$_AuthAuthenticated;

  @override
  $Res call({
    Object? user = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_AuthAuthenticated(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ));
  }
}

/// @nodoc

class _$_AuthAuthenticated extends _AuthAuthenticated
    with DiagnosticableTreeMixin {
  const _$_AuthAuthenticated({required this.user, required this.status})
      : super._();

  @override
  final User user;
  @override
  final AppStatus status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.authenticated(user: $user, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.authenticated'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthAuthenticated &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_AuthAuthenticatedCopyWith<_$_AuthAuthenticated> get copyWith =>
      __$$_AuthAuthenticatedCopyWithImpl<_$_AuthAuthenticated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, AppStatus status) authenticated,
    required TResult Function(AppStatus status, User user) unauthenticated,
  }) {
    return authenticated(user, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user, AppStatus status)? authenticated,
    TResult Function(AppStatus status, User user)? unauthenticated,
  }) {
    return authenticated?.call(user, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, AppStatus status)? authenticated,
    TResult Function(AppStatus status, User user)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthAuthenticated value) authenticated,
    required TResult Function(_AuthUnauthenticated value) unauthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthAuthenticated value)? authenticated,
    TResult Function(_AuthUnauthenticated value)? unauthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthAuthenticated value)? authenticated,
    TResult Function(_AuthUnauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthAuthenticated extends AuthState {
  const factory _AuthAuthenticated(
      {required final User user,
      required final AppStatus status}) = _$_AuthAuthenticated;
  const _AuthAuthenticated._() : super._();

  @override
  User get user => throw _privateConstructorUsedError;
  @override
  AppStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AuthAuthenticatedCopyWith<_$_AuthAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthUnauthenticatedCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthUnauthenticatedCopyWith(_$_AuthUnauthenticated value,
          $Res Function(_$_AuthUnauthenticated) then) =
      __$$_AuthUnauthenticatedCopyWithImpl<$Res>;
  @override
  $Res call({AppStatus status, User user});
}

/// @nodoc
class __$$_AuthUnauthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_AuthUnauthenticatedCopyWith<$Res> {
  __$$_AuthUnauthenticatedCopyWithImpl(_$_AuthUnauthenticated _value,
      $Res Function(_$_AuthUnauthenticated) _then)
      : super(_value, (v) => _then(v as _$_AuthUnauthenticated));

  @override
  _$_AuthUnauthenticated get _value => super._value as _$_AuthUnauthenticated;

  @override
  $Res call({
    Object? status = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_AuthUnauthenticated(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AppStatus,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_AuthUnauthenticated extends _AuthUnauthenticated
    with DiagnosticableTreeMixin {
  const _$_AuthUnauthenticated({required this.status, required this.user})
      : super._();

  @override
  final AppStatus status;
  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.unauthenticated(status: $status, user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.unauthenticated'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthUnauthenticated &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_AuthUnauthenticatedCopyWith<_$_AuthUnauthenticated> get copyWith =>
      __$$_AuthUnauthenticatedCopyWithImpl<_$_AuthUnauthenticated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, AppStatus status) authenticated,
    required TResult Function(AppStatus status, User user) unauthenticated,
  }) {
    return unauthenticated(status, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user, AppStatus status)? authenticated,
    TResult Function(AppStatus status, User user)? unauthenticated,
  }) {
    return unauthenticated?.call(status, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, AppStatus status)? authenticated,
    TResult Function(AppStatus status, User user)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(status, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthAuthenticated value) authenticated,
    required TResult Function(_AuthUnauthenticated value) unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthAuthenticated value)? authenticated,
    TResult Function(_AuthUnauthenticated value)? unauthenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthAuthenticated value)? authenticated,
    TResult Function(_AuthUnauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthUnauthenticated extends AuthState {
  const factory _AuthUnauthenticated(
      {required final AppStatus status,
      required final User user}) = _$_AuthUnauthenticated;
  const _AuthUnauthenticated._() : super._();

  @override
  AppStatus get status => throw _privateConstructorUsedError;
  @override
  User get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AuthUnauthenticatedCopyWith<_$_AuthUnauthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}
