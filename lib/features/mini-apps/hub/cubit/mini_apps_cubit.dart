import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zhasqoldau/app/app_router.dart';
import 'package:zhasqoldau/core/services/navigation_service.dart';
import 'package:zhasqoldau/features/mini-apps/domain/mini_app.dart';
import 'package:zhasqoldau/features/mini-apps/hub/cubit/mini_apps_state.dart';

import '../../../../locator.dart';

class MiniAppsCubit extends Cubit<MiniAppsState> {
  final NavigationService _navigationService;

  MiniAppsCubit()
      : _navigationService = sl(),
        super(MiniAppsState(apps: _miniApps));

  void openMiniApp(MiniApp app) =>
      _navigationService.pushNamed(AppPages.miniApp, arguments: app);

  static const _miniApps = [
    MiniApp(
      title: 'HeadHunter',
      launchUrl: 'https://hh.kz',
      iconPath: 'assets/mini-apps/hh.png',
    ),
    MiniApp(
      title: 'Enbek',
      launchUrl: 'https://enbek.kz',
      iconPath: 'assets/mini-apps/enbek.png',
    ),
  ];
}
