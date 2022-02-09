import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).padding.top,
        ),
        Container(
          color: Colors.red,
          height: 200,
          child: Row(
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
        ),
      ],
    );
  }
}
