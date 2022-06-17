import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zhasqoldau/features/mini-apps/domain/mini_app.dart';

@immutable
class MiniAppsState {
  final List<MiniApp> apps;

  const MiniAppsState({
    required this.apps,
  });
}
