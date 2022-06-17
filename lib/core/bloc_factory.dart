import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:zhasqoldau/locator.dart';

typedef BlocCreator<T> = T Function({Object? param1, Object? param2});

class BlocFactory {
  static BlocFactory instance = BlocFactory(getIt: sl);

  final GetIt _getIt;

  BlocFactory({required GetIt getIt}) : _getIt = getIt;

  T create<T extends Object>({
    String? instanceName,
    Object? param1,
    Object? param2,
  }) =>
      _getIt.get<T>(
        instanceName: instanceName,
        param1: param1,
        param2: param2,
      );
}
