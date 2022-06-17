import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zhasqoldau/core/bloc_factory.dart';
import 'package:zhasqoldau/features/universities/bloc/univerisities_cubit.dart';
import 'package:zhasqoldau/features/universities/bloc/universities_state.dart';
import 'package:zhasqoldau/features/universities/page/university_cell.dart';

class UniversitiesPage extends StatefulWidget {
  final BlocCreator<UniversitiesCubit> blocCreator;

  const UniversitiesPage({
    Key? key,
    required this.blocCreator,
  }) : super(key: key);

  @override
  State<UniversitiesPage> createState() => UniversitiesPageState();
}

class UniversitiesPageState extends State<UniversitiesPage> {
  late final UniversitiesCubit _cubit;

  @override
  void initState() {
    _cubit = widget.blocCreator();
    super.initState();
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<UniversitiesCubit, UniversitiesState>(
        bloc: _cubit,
        builder: (BuildContext context, UniversitiesState state) {
          return state.map(
            (loadedState) => ListView.builder(
              itemCount: loadedState.universities.length,
              itemBuilder: (BuildContext context, int index) {
                return UniversityCell(
                  university: loadedState.universities[index],
                  onTap: () => _cubit.onSelectUnic(
                    loadedState.universities[index],
                  ),
                );
              },
            ),
            loading: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
