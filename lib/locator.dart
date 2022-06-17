import 'package:get_it/get_it.dart';
import 'package:zhasqoldau/core/services/navigation_service.dart';
import 'package:zhasqoldau/features/auth/bloc/auth_bloc.dart';
import 'package:zhasqoldau/features/sign_up/cubit/sign_up_cubit.dart';

import 'features/auth/repository/auth_repository.dart';
import 'features/login/cubit/login_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerSingleton<NavigationService>(NavigationService());
  sl.registerSingleton<AuthenticationRepository>(AuthenticationRepository());

  sl.registerFactory<AuthBloc>(() => AuthBloc(
        repository: sl<AuthenticationRepository>(),
      ));

  sl.registerFactory<LoginCubit>(() => LoginCubit(sl()));
  sl.registerFactory<SignUpCubit>(() => SignUpCubit(sl()));
}
