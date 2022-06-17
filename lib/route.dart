import 'package:flutter/widgets.dart';
import 'features/auth/bloc/auth_bloc.dart';
import 'features/home/view/home_page.dart';
import 'features/login/page/login_page.dart';

List<Page> onGenerateAppViewPages(AppStatus state, List<Page<dynamic>> pages) {
  switch (state) {
    case AppStatus.authenticated:
      return [HomePage.page()];
    case AppStatus.unauthenticated:
      return [LoginPage.page()];
  }
}
