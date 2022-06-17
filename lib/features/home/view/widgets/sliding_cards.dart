import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math' as math;

class SlidingCardsView extends StatefulWidget {
  @override
  _SlidingCardsViewState createState() => _SlidingCardsViewState();
}

class _SlidingCardsViewState extends State<SlidingCardsView> {
  late PageController pageController;
  double pageOffset = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.8);
    pageController.addListener(() {
      setState(() => pageOffset = pageController.page ?? 0);
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: PageView(
        controller: pageController,
        children: <Widget>[
          SlidingCard(
            name:
                'В стенах AITU проходит HackDay, где собрались 30 команд. Победители получат 3 миллиона тенге',
            date: '4.20-30',
            assetName:
                'https://the-tech.kz/wp-content/uploads/2021/06/dsc01507-scaled-1-1200x675.jpg',
            offset: pageOffset,
          ),
          SlidingCard(
            name:
                'В стенах AITU проходит HackDay, где собрались 30 команд. Победители получат 3 миллиона тенге',
            date: '4.20-30',
            assetName:
                'https://tengrinews.kz/userdata/news/2021/news_441947/thumb_m/photo_366440.jpeg',
            offset: pageOffset,
          ),
        ],
      ),
    );
  }
}

class SlidingCard extends StatelessWidget {
  final String name;
  final String date;
  final String assetName;
  final double offset;

  const SlidingCard({
    Key? key,
    required this.name,
    required this.date,
    required this.assetName,
    required this.offset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double gauss = math.exp(-(math.pow((offset.abs() - 0.5), 2) / 0.08));
    return Transform.translate(
      offset: Offset(-32 * gauss * offset.sign, 0),
      child: Card(
        color: Color.fromARGB(255, 55, 53, 53),
        margin: EdgeInsets.only(left: 8, right: 8, bottom: 24),
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Flexible(
              flex: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  bottomLeft: Radius.circular(32),
                ),
                child: Image.network(
                  assetName,
                  height: 180,
                  alignment: Alignment(-offset.abs(), 0),
                  fit: BoxFit.none,
                ),
              ),
            ),
            SizedBox(height: 8),
            Flexible(
              flex: 3,
              child: CardContent(
                name: name,
                date: date,
                offset: gauss,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardContent extends StatelessWidget {
  final String name;
  final String date;
  final double offset;

  const CardContent(
      {Key? key, required this.name, required this.date, required this.offset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Transform.translate(
            offset: Offset(8 * offset, 0),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Spacer(),
          Transform.translate(
            offset: Offset(32 * offset, 0),
            child: Text(
              date,
              style: TextStyle(color: Colors.white54),
            ),
          ),
        ],
      ),
    );
  }
}
