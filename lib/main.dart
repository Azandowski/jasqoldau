import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zhasqoldau/features/auth/bloc/auth_bloc.dart';
import 'package:zhasqoldau/features/auth/repository/auth_repository.dart';
import 'package:zhasqoldau/features/sign_up/page/sign_up_page.dart';
import 'package:zhasqoldau/route.dart';
import 'package:zhasqoldau/theme.dart';

import 'features/login/page/login_page.dart';

final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

void main() async {
  return BlocOverrides.runZoned(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();
      runApp(
        App(
          authenticationRepository: AuthenticationRepository(),
        ),
      );
    },
  );
}

// class MainApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         // BlocProvider.value(value: serviceLocator.sl<ChatsCubit>()),
//         // BlocProvider(create: (_) => serviceLocator.sl<CategoryBloc>()),
//         // BlocProvider.value(value: serviceLocator.sl<AuthBloc>())
//       ],
//       child: MaterialApp(
//         home: SplashScreen(),
//         navigatorKey: navigatorKey,
//         routes: onGenerateAppViewPages(state, pages),
//       ),
//     );
//   }
// }

class App extends StatelessWidget {
  const App({
    Key? key,
    required AuthenticationRepository authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        super(key: key);

  final AuthenticationRepository _authenticationRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _authenticationRepository,
      child: BlocProvider(
        create: (_) => AuthBloc(
          repository: _authenticationRepository,
        ),
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: SignUpPage(),
    );
  }
}