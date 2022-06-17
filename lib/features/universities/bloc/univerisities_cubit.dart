import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zhasqoldau/app/app_router.dart';
import 'package:zhasqoldau/core/services/navigation_service.dart';
import 'package:zhasqoldau/features/universities/bloc/universities_state.dart';
import 'package:zhasqoldau/features/universities/domain/university.dart';
import 'package:zhasqoldau/features/universities/repository/universities_repository.dart';
import 'package:zhasqoldau/locator.dart';

class UniversitiesCubit extends Cubit<UniversitiesState> {
  final UniversitiesRepository _repository;
  final NavigationService _navigationService;

  UniversitiesCubit()
      : _repository = sl(),
        _navigationService = sl(),
        super(const UniversitiesState.loading()) {
    _init();
  }

  void onSelectUnic(University unic) {
    _navigationService.pushNamed(AppPages.universityDetails, arguments: unic);
  }

  void _init() async {
    final universities = await _repository.getUniversities();
    emit(UniversitiesState(universities: universities));
  }
}
