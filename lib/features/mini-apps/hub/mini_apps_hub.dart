import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zhasqoldau/core/bloc_factory.dart';
import 'package:zhasqoldau/features/mini-apps/domain/mini_app.dart';
import 'package:zhasqoldau/features/mini-apps/hub/cubit/mini_apps_cubit.dart';
import 'package:zhasqoldau/features/mini-apps/hub/cubit/mini_apps_state.dart';

class MiniAppsHub extends StatefulWidget {
  final BlocCreator<MiniAppsCubit> blocCreator;

  const MiniAppsHub({
    Key? key,
    required this.blocCreator,
  }) : super(key: key);

  @override
  State<MiniAppsHub> createState() => _MiniAppsHubState();
}

class _MiniAppsHubState extends State<MiniAppsHub> {
  late MiniAppsCubit _cubit;

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
        child: BlocBuilder<MiniAppsCubit, MiniAppsState>(
          bloc: _cubit,
          builder: (context, MiniAppsState state) {
            return GridView.count(
              crossAxisCount: 3,
              children: [
                for (final app in state.apps)
                  InkWell(
                    onTap: () => _cubit.openMiniApp(app),
                    child: MiniAppView(
                      miniApp: app,
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class MiniAppView extends StatelessWidget {
  final MiniApp miniApp;

  const MiniAppView({
    Key? key,
    required this.miniApp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            miniApp.iconPath,
          ),
          const SizedBox(height: 8.0),
          Text(miniApp.title),
        ],
      ),
    );
  }
}
