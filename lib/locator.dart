import 'package:get_it/get_it.dart';
import 'package:zhasqoldau/core/services/navigation_service.dart';
import 'package:zhasqoldau/features/auth/bloc/auth_bloc.dart';
import 'package:zhasqoldau/features/mini-apps/mini-app/cubit/mini_app_cubit.dart';
import 'package:zhasqoldau/features/sign_up/cubit/sign_up_cubit.dart';
import 'package:zhasqoldau/features/universities/bloc/university_details/university_detail_cubit.dart';
import 'package:zhasqoldau/features/universities/domain/university.dart';
import 'package:zhasqoldau/features/universities/repository/universities_repository.dart';

import 'features/auth/repository/auth_repository.dart';
import 'features/login/cubit/login_cubit.dart';
import 'features/mini-apps/domain/mini_app.dart';
import 'features/mini-apps/hub/cubit/mini_apps_cubit.dart';
import 'features/universities/bloc/univerisities_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerSingleton<NavigationService>(NavigationService());
  sl.registerSingleton<AuthenticationRepository>(AuthenticationRepository());
  sl.registerSingleton<UniversitiesRepository>(UniversitiesRepository());

  sl.registerFactory<AuthBloc>(() => AuthBloc(
        repository: sl<AuthenticationRepository>(),
      ));

  sl.registerFactory<LoginCubit>(() => LoginCubit(sl()));
  sl.registerFactory<SignUpCubit>(() => SignUpCubit(sl()));
  sl.registerFactory<UniversitiesCubit>(() => UniversitiesCubit());
  sl.registerFactoryParam<UniversityDetailCubit, University, void>(
    (param1, _) => UniversityDetailCubit(university: param1),
  );

  sl.registerFactory(() => MiniAppsCubit());
  sl.registerFactoryParam<MiniAppCubit, MiniApp, void>(
    (param1, _) => MiniAppCubit(
      miniApp: param1,
    ),
  );
}
