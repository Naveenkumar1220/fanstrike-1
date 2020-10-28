import 'package:flutter/material.dart';

class KnowMore2 extends StatelessWidget {
  KnowMore2({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
              flex: 1,
              child:Container(
              child: Column(children: <Widget>[
            Image.asset(
              'assets/images/security.png',
              width: 150,
              height: 150,
            ),
            Text(
              'Security',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(25, 42, 86, 1),
                fontFamily: 'PoppinsBold',
                fontSize: 24,
                letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
              ),
            ),
            Text(
              'Neque porro ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(51, 51, 51, 1),
                  fontFamily: 'PoppinsLight',
                  fontSize: 18,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1.8888888888888888),
            )
          ]))),
        ]);
  }
}
