import 'package:zhasqoldau/features/universities/domain/university.dart';

abstract class UniversityDetailState {
  const UniversityDetailState();
}

class UniversitryDetailLoadedState extends UniversityDetailState {
  final University university;
  final List<double> coordinates;

  const UniversitryDetailLoadedState({
    this.coordinates = const [],
    required this.university,
  });
}

class UniversitryDetailLoadingState extends UniversityDetailState {
  const UniversitryDetailLoadingState();
}
