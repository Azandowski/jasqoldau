import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:zhasqoldau/features/universities/bloc/university_details/university_detail_state.dart';
import 'package:zhasqoldau/features/universities/domain/university.dart';

class UniversityDetailCubit extends Cubit<UniversityDetailState> {
  final University _university;

  UniversityDetailCubit({
    required University university,
  })  : _university = university,
        super(UniversitryDetailLoadingState()) {
    _decodeAddress();
  }

  Future<void> _decodeAddress() async {
    try {
      final locations = await locationFromAddress(_university.addressRu);
      if (locations.isEmpty)
        emit(UniversitryDetailLoadedState(university: _university));
      emit(UniversitryDetailLoadedState(
        university: _university,
        coordinates: [locations.first.latitude, locations.first.longitude],
      ));
    } catch (_) {
      emit(UniversitryDetailLoadedState(university: _university));
    }
  }
}
