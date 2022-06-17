import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:zhasqoldau/core/bloc_factory.dart';
import 'package:zhasqoldau/features/universities/bloc/university_details/university_detail_cubit.dart';
import 'package:zhasqoldau/features/universities/bloc/university_details/university_detail_state.dart';
import 'package:zhasqoldau/features/universities/domain/university.dart';
import 'package:latlong2/latlong.dart';
import 'package:zhasqoldau/theme.dart';

const _mapBoxApiKey =
    'pk.eyJ1IjoiZWx6aGFuZXJrZSIsImEiOiJjanBsaGQ5MzUwMjJkNDJydDBmd2l0aDRtIn0.x0aQGxRtg_QdwQe-XGeiFA';

class UniversityDetails extends StatefulWidget {
  final BlocCreator<UniversityDetailCubit> blocCreator;

  const UniversityDetails({
    Key? key,
    required this.blocCreator,
  }) : super(key: key);

  @override
  State<UniversityDetails> createState() => _UniversityDetailsState();
}

class _UniversityDetailsState extends State<UniversityDetails> {
  late UniversityDetailCubit _cubit;

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
      body: SafeArea(
        child: BlocBuilder<UniversityDetailCubit, UniversityDetailState>(
          bloc: _cubit,
          builder: (BuildContext context, UniversityDetailState state) {
            if (state is UniversitryDetailLoadedState) {
              final university = state.university;

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 24.0),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 55, 53, 53),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            university.titleKz,
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w900,
                              color: lightBlue,
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Вероятность\nтрудоустройства',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 200, 186, 186),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12.0),
                              SleekCircularSlider(
                                initialValue: university.percentageOfEmployment,
                                appearance: CircularSliderAppearance(
                                  size: 75.0,
                                  infoProperties: InfoProperties(
                                    mainLabelStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    if (state.coordinates.isNotEmpty)
                      SizedBox(
                        height: 300.0,
                        child: UniversityMap(
                          name: university.title,
                          coordinates: state.coordinates,
                        ),
                      ),
                  ],
                ),
              );
            }

            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}

class UniversityMap extends StatelessWidget {
  final String name;
  final List<double> coordinates;

  UniversityMap({
    required this.name,
    required this.coordinates,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: FlutterMap(
        options: MapOptions(
          zoom: 15.0,
          center: LatLng(coordinates.first, coordinates.last),
        ),
        layers: [
          TileLayerOptions(
            urlTemplate:
                "https://api.mapbox.com/styles/v1/elzhanerke/ckyznwc7a009i15ldtgdz0qt6/tiles/{z}/{x}/{y}?access_token=$_mapBoxApiKey",
            attributionBuilder: (_) {
              return const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text("© JasQoldau"),
              );
            },
          ),
          MarkerLayerOptions(markers: [
            Marker(
              point: LatLng(coordinates.first, coordinates.last),
              builder: (BuildContext context) => Icon(
                Icons.school,
                color: lightBlue,
                size: 28.0,
              ),
            ),
          ])
        ],
      ),
    );
  }
}
