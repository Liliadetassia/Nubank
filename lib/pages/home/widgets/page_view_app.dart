import 'package:flutter/material.dart';
import 'package:nubankclone/pages/home/widgets/card_app.dart';

class PageViewApp extends StatelessWidget {
  final double top;

  const PageViewApp({Key? key, required this.top}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      height: MediaQuery.of(context).size.height * .45,
      left: 0,
      right: 0,
      //width: MediaQuery.of(context).size.width,
      child: PageView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          CardApp(),
          CardApp(),
          CardApp(),
        ],
      ),
    );
  }
}
