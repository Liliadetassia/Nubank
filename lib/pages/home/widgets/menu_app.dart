import 'package:flutter/material.dart';

class MenuApp extends StatelessWidget {
  final double top;
  final bool showMenu;

  const MenuApp({Key? key, required this.top, required this.showMenu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 200),
        opacity: showMenu ? 1 : 0,
        child: Container(
          //color: Colors.red,
          height: MediaQuery.of(context).size.height * 0.55,
          child: Column(
            children: <Widget>[
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/QR_Code_Model_1_Example.svg/528px-QR_Code_Model_1_Example.svg.png',
                height: 120,
                color: Colors.white,
              ),
              Text.rich(
                TextSpan(
                  text: 'Banco ',
                  children: [
                    TextSpan(
                        text: '260 - Nu Pagamentos S.A',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: 5,
              ),
              Text.rich(
                TextSpan(
                  text: 'Agência ',
                  children: [
                    TextSpan(
                        text: '0001',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: 5,
              ),
              Text.rich(
                TextSpan(
                  text: 'Conta ',
                  children: [
                    TextSpan(
                        text: '5909739-1',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
