import 'package:flutter/material.dart';
import 'package:nubankclone/pages/home/widgets/my_app_bar.dart';
import 'package:nubankclone/pages/home/widgets/my_dots_app.dart';
import 'package:nubankclone/pages/home/widgets/page_view_app.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late bool _showMenu;
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _showMenu = false;
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeigth = MediaQuery.of(context).size.height;
    var child2 = null;
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          MyAppBar(
            showMenu: _showMenu,
            onTap: () {
              setState(() {
                _showMenu = !_showMenu;
              });
            },
          ),
          PageViewApp(
            top: !_showMenu ? _screenHeigth * .24 : _screenHeigth * .75,
            onChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          MyDotsApp(
            top: _screenHeigth * .70,
            currentIndex: _currentIndex,
          ),
        ],
      ),
    );
  }
}
