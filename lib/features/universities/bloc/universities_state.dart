import 'package:freezed_annotation/freezed_annotation.dart';
import '../domain/university.dart';
part 'universities_state.freezed.dart';

@freezed
class UniversitiesState with _$UniversitiesState {
  const factory UniversitiesState.loading() = _UniversitiesStateLoading;

  const factory UniversitiesState({
    required List<University> universities,
  }) = _UniversitiesState;
}
