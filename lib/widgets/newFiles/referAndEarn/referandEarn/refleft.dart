import 'package:flutter/material.dart';

class RefLeft extends StatelessWidget {
  RefLeft({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(left: screenSize.width > 800 ? 200 : 50),
              child: Text(
                'Refer & Earn',
                textAlign: TextAlign.left,
                textScaleFactor: screenSize.width > 800 ? 1 : 0.4,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Poppins',
                    fontSize: 60,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Padding(
              padding: EdgeInsets.only(left: screenSize.width > 800 ? 200 : 50,top: screenSize.width>800? 100:30),
              child: Text(
                'Invite your friends and win \$150 as bonus cash ',
                textAlign: TextAlign.left,
                textScaleFactor: screenSize.width > 800 ? 1 : 0.4,
                style: TextStyle(
                    color: Color.fromRGBO(25, 42, 86, 1),
                    fontFamily: 'PoppinsBold',
                    fontSize: 50,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    // fontWeight: FontWeight.normal,
                    height: 1.5),
              )),
        ]);
  }
}
