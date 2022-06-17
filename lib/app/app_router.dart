import 'package:flutter/material.dart';
import 'package:zhasqoldau/core/bloc_factory.dart';
import 'package:zhasqoldau/features/login/page/login_page.dart';
import 'package:zhasqoldau/features/mini-apps/hub/mini_apps_hub.dart';
import 'package:zhasqoldau/features/sign_up/page/sign_up_page.dart';
import 'package:zhasqoldau/features/universities/page/universities_page.dart';

import '../features/auth/presentation/splash_page.dart';
import '../features/home/view/home_page.dart';
import '../features/mini-apps/mini-app/mini_app.dart';
import '../features/universities/page/university_details.dart';

class AppPages {
  const AppPages._();

  static const splash = '/';
  static const signUp = '/sign-up';
  static const signIn = '/sign-in';
  static const home = '/home';
  static const universities = '/universities';
  static const universityDetails = 'university-details';
  static const miniAppsHub = 'mini-apps-hub';
  static const miniApp = 'mini-app';
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
      case AppPages.universities:
        return MaterialPageRoute(
          builder: (_) => UniversitiesPage(
            blocCreator: blocFactory.create,
          ),
        );
      case AppPages.miniAppsHub:
        return MaterialPageRoute(
          builder: (_) => MiniAppsHub(
            blocCreator: blocFactory.create,
          ),
        );
      case AppPages.miniApp:
        return MaterialPageRoute(
          builder: (_) => MiniAppPage(
            blocCreator: (({param1, param2}) => blocFactory.create(
                  param1: settings.arguments,
                )),
          ),
        );
      case AppPages.universityDetails:
        return MaterialPageRoute(
          builder: (_) {
            return UniversityDetails(
              blocCreator: (({param1, param2}) => blocFactory.create(
                    param1: settings.arguments,
                  )),
            );
          },
        );
      default:
        throw UnimplementedError('No route');
    }
  }
}
