import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final bool showMenu;

  const MyAppBar({Key? key, this.showMenu}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).padding.top,
        ),
        Container(
          color: Colors.purple[800],
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.network(
                    'https://i.pinimg.com/originals/90/d8/f1/90d8f1af934daaa634246c79f5a7ea4f.png',
                    height: 35,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Lília de Tássia',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Icon(!showMenu ? Icons.expand_more : Icons.expand_less)
            ],
          ),
        ),
      ],
    );
  }
}
