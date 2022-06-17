import 'package:zhasqoldau/features/mini-apps/domain/mini_app.dart';

enum MiniAppStatus {
  initialLoading,
  redirectLoading,
  loaded,
}

class MiniAppState {
  final MiniApp app;
  final MiniAppStatus status;

  const MiniAppState({
    required this.app,
    required this.status,
  });

  MiniAppState copyWith({
    MiniAppStatus? status,
  }) =>
      MiniAppState(
        app: this.app,
        status: status ?? this.status,
      );
}
