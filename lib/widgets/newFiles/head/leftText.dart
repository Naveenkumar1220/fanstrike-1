// import 'package:explore/screens/about_us.dart';
import 'package:flutter/material.dart';

class LeftText extends StatelessWidget {
  LeftText({
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
          Text(
            'INTENT',
            textAlign: TextAlign.left,
            softWrap: true,
            textScaleFactor: screenSize.width > 800 ? 1 : 0.4,
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'PoppinsExtraBold',
                fontSize: 50,
                letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1),
          ),
          Padding(
              padding: EdgeInsets.only(left: screenSize.width > 800 ? 100 : 30),
              child: Text(
                'GUTS',
                textAlign: TextAlign.left,
                softWrap: true,
                textScaleFactor: screenSize.width > 800 ? 1 : 0.4,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'PoppinsExtraBold',
                    fontSize: 70,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Text(
            'THRILL',
            textAlign: TextAlign.left,
            softWrap: true,
            textScaleFactor: screenSize.width > 800 ? 1 : 0.4,
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'PoppinsExtraBold',
                fontSize: 80,
                letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1),
          ),
          Padding(
              padding: EdgeInsets.only(left: screenSize.width > 800 ? 200 : 50),
              child: Text(
                'SPORT',
                textAlign: TextAlign.left,
                softWrap: true,
                textScaleFactor: screenSize.width > 800 ? 1 : 0.4,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'PoppinsExtraBold',
                    fontSize: 100,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Padding(
              padding: EdgeInsets.only(
                  top: screenSize.width > 800 ? 30 : 15,
                  bottom: screenSize.width > 800 ? 70 : 15),
              child: Text(
                'Experience the joy beyond fantasy',
                textAlign: TextAlign.center,
                softWrap: true,
                textScaleFactor: screenSize.width > 800 ? 1 : 0.4,
                style: TextStyle(
                  color: Color.fromRGBO(255, 229, 0, 1),
                  fontFamily: 'Caveat',
                  fontSize: 44,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              )),
          InkWell(
              // onTap: () => Navigator.of(context).pushNamed(AboutUs.route),
              child: Container(
                  alignment: Alignment.center,
                  width: screenSize.width > 800 ? 260 : 90,
                  height: screenSize.width > 800 ? 60 : 30,
                  margin: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(screenSize.width > 800 ? 30 : 15)),
                      gradient: LinearGradient(
                          begin: Alignment(
                              0.962270200252533, 0.043561749160289764),
                          end: Alignment(
                              -0.043561749160289764, 0.04329774156212807),
                          colors: [
                            Color.fromRGBO(255, 93, 62, 1),
                            Color.fromRGBO(210, 16, 1, 1)
                          ]),
                    ),
                    child: Text(
                      'Download App',
                      textAlign: TextAlign.center,
                      textScaleFactor: screenSize.width > 800 ? 1 : 0.5,
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'PoppinsBold',
                          fontSize: 20,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    ),
                  ))),
        ]);
  }
}
