import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_instagram_stories/flutter_instagram_stories.dart';
import 'package:zhasqoldau/app/app_router.dart';
import 'package:zhasqoldau/features/home/view/widgets/avatar.dart';

import '../../auth/bloc/auth_bloc.dart';
import 'widgets/sliding_cards.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: HomePage());

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static String collectionDbName = 'stories_db';

  CollectionReference dbInstance =
      FirebaseFirestore.instance.collection(collectionDbName);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final user = context.select((AuthBloc bloc) => bloc.state.user);
    return Scaffold(
      appBar: AppBar(
        title: const Text('JasQoldau'),
        actions: <Widget>[
          IconButton(
            key: const Key('homePage_logout_iconButton'),
            icon: const Icon(Icons.exit_to_app),
            onPressed: () => context.read<AuthBloc>().add(AuthLogout()),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          FlutterInstagramStories(
            collectionDbName: collectionDbName,
            showTitleOnIcon: true,
            backFromStories: () {
              _backFromStoriesAlert();
            },
            iconTextStyle: const TextStyle(
              fontSize: 8.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            iconImageBorderRadius: BorderRadius.circular(1000005.0),
            iconBoxDecoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(1005.0)),
              color: Color(0xFFffffff),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff333333),
                  blurRadius: 10.0,
                  offset: Offset(
                    0.0,
                    4.0,
                  ),
                ),
              ],
            ),
            iconWidth: 80.0,
            iconHeight: 80.0,
            textInIconPadding:
                const EdgeInsets.only(left: 0, right: 0, bottom: 2.0),
            //how long story lasts in seconds
            imageStoryDuration: 7,
            progressPosition: ProgressPosition.top,
            repeat: true,
            inline: false,
            languageCode: 'ru',
            backgroundColorBetweenStories: Colors.black,
            closeButtonIcon: const Icon(
              Icons.close,
              color: Colors.white,
              size: 28.0,
            ),
            closeButtonBackgroundColor: const Color(0x11000000),
            sortingOrderDesc: true,
            lastIconHighlight: true,
            lastIconHighlightColor: Colors.green,
            lastIconHighlightRadius: const Radius.circular(15.0),
            captionTextStyle: const TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
            captionMargin: const EdgeInsets.only(
              bottom: 50,
            ),
            captionPadding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 8,
            ),
          ),
          Avatar(photo: user.photo),
          const SizedBox(height: 4),
          Text(user.email ?? '', style: textTheme.headline6),
          const SizedBox(height: 4),
          Text(user.name ?? '', style: textTheme.headline5),
          Header(),
          SlidingCardsView(),
          ElevatedButton(
            child: Text('Вузы'),
            onPressed: () {
              Navigator.of(context).pushNamed(AppPages.universities);
            },
          ),
        ],
      ),
    );
  }

  _backFromStoriesAlert() {
    showDialog(
      context: context,
      builder: (_) => SimpleDialog(
        title: const Text(
          "User have looked stories and closed them.",
          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18.0),
        ),
        children: <Widget>[
          SimpleDialogOption(
            child: const Text("Dismiss"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Text(
        'Общая информация',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
