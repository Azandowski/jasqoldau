import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zhasqoldau/features/mini-apps/domain/mini_app.dart';
import 'package:zhasqoldau/features/mini-apps/mini-app/cubit/mini_app_state.dart';

class MiniAppCubit extends Cubit<MiniAppState> {
  MiniAppCubit({
    required MiniApp miniApp,
  }) : super(
          MiniAppState(
            app: miniApp,
            status: MiniAppStatus.initialLoading,
          ),
        );

  void fireWebViewInitiallyLoaded() => emit(state.copyWith(
        status: MiniAppStatus.loaded,
      ));
}
