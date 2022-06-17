import 'package:flutter/material.dart';
import 'package:zhasqoldau/core/bloc_factory.dart';
import 'package:zhasqoldau/features/login/page/login_page.dart';
import 'package:zhasqoldau/features/sign_up/page/sign_up_page.dart';

import '../features/auth/presentation/splash_page.dart';
import '../features/home/view/home_page.dart';

class AppPages {
  const AppPages._();

  static const splash = '/';
  static const signUp = '/sign-up';
  static const signIn = '/sign-in';
  static const home = '/home';
}

abstract class AppRouter {
  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final blocFactory = BlocFactory.instance;

    switch (settings.name) {
      case AppPages.splash:
        return MaterialPageRoute(builder: (_) => SplashPage());
      case AppPages.signIn:
        return MaterialPageRoute(
          builder: (_) => LoginPage(
            blocCreator: blocFactory.create,
          ),
        );
      case AppPages.signUp:
        return MaterialPageRoute(
          builder: (_) => SignUpPage(
            blocCreator: blocFactory.create,
          ),
        );
      case AppPages.home:
        return MaterialPageRoute(builder: (_) => HomePage());
      default:
        throw UnimplementedError('No route');
    }
  }
}
