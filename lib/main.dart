import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zhasqoldau/app/app_router.dart';
import 'package:zhasqoldau/core/services/navigation_service.dart';
import 'package:zhasqoldau/features/auth/bloc/auth_bloc.dart';
import 'package:zhasqoldau/features/auth/repository/auth_repository.dart';
import 'package:zhasqoldau/theme.dart';
import './locator.dart' as di;

void main() async {
  return BlocOverrides.runZoned(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();
      await di.init();
      runApp(
        App(),
      );
    },
  );
}

class App extends StatefulWidget {
  const App({
    Key? key,
  }) :
        super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final _authBloc = di.sl<AuthBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _authBloc,
      child: MaterialApp(
        theme: theme,
        navigatorKey: NavigationService.navKey,
        onGenerateRoute: AppRouter.onGenerateRoute,
        builder: (context, child) {
          return BlocListener<AuthBloc, AuthState>(
            bloc: _authBloc,
            listener: (BuildContext context, AuthState state) {
              final navigationService = di.sl<NavigationService>();
              state.mapOrNull(
                authenticated: (_) =>
                    navigationService.pushAndRemoveUntil(AppPages.home),
                unauthenticated: (_) =>
                    navigationService.pushAndRemoveUntil(AppPages.signIn),
              );
            },
            child: child,
          );
        },
      ),
    );
  }
}
