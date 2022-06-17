import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:zhasqoldau/core/bloc_factory.dart';
import 'package:zhasqoldau/features/mini-apps/mini-app/cubit/mini_app_cubit.dart';
import 'package:zhasqoldau/features/mini-apps/mini-app/cubit/mini_app_state.dart';

import '../domain/mini_app.dart';

class MiniAppPage extends StatefulWidget {
  final BlocCreator<MiniAppCubit> blocCreator;

  const MiniAppPage({
    Key? key,
    required this.blocCreator,
  }) : super(key: key);

  @override
  State<MiniAppPage> createState() => _MiniAppState();
}

class _MiniAppState extends State<MiniAppPage> {
  late MiniAppCubit _cubit;
  late InAppWebViewController _controller;
  final _options = InAppWebViewGroupOptions(
    crossPlatform: InAppWebViewOptions(
      horizontalScrollBarEnabled: false,
      verticalScrollBarEnabled: false,
      supportZoom: false,
    ),
  );

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
      body: SafeArea(
        child: BlocBuilder<MiniAppCubit, MiniAppState>(
          builder: (
            BuildContext context,
            MiniAppState state,
          ) {
            return Stack(
              children: [
                Positioned.fill(
                  child: InAppWebView(
                    initialOptions: _options,
                    initialUrlRequest: URLRequest(
                      url: Uri.parse(
                        state.app.launchUrl,
                      ),
                    ),
                    onWebViewCreated: (InAppWebViewController controller) {
                      _controller = controller;
                    },
                    onLoadStop: (_, uri) {
                      _cubit.fireWebViewInitiallyLoaded();
                    },
                  ),
                ),
                Positioned.fill(
                  child: Visibility(
                    visible: true,
                    child: _MiniHubLoader(
                      app: state.app,
                    ),
                  ),
                ),
              ],
            );
          },
          bloc: _cubit,
        ),
      ),
    );
  }
}

class _MiniHubLoader extends StatelessWidget {
  final MiniApp app;

  const _MiniHubLoader({
    Key? key,
    required this.app,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                Image.asset(
                  app.iconPath,
                  width: 80.0,
                  height: 80.0,
                ),
                const SizedBox(height: 12.0),
                Text(
                  'Jasqoldau Apps',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40.0),
        ],
      ),
    );
  }
}
