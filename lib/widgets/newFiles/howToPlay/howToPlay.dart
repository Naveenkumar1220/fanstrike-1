import 'package:explore/widgets/newFiles/howToPlay/utils/cardsContent.dart';
import 'package:explore/widgets/newFiles/howToPlay/utils/cardsContent1.dart';
import 'package:explore/widgets/newFiles/howToPlay/utils/cardsContent2.dart';
import 'package:explore/widgets/newFiles/howToPlay/utils/cardsContent3.dart';
import 'package:flutter/material.dart';

class HowToPlay extends StatelessWidget {
  HowToPlay({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(
            //                    <--- top side
            color: Colors.grey,
            width: 0.5,
          ),
        )),
        child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    'HOW TO PLAY',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(25, 42, 86, 1),
                        fontFamily: 'Poppins',
                        fontSize: screenSize.width > 800 ? 60 : 40,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
              screenSize.width > 800
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                          Expanded(
                              flex: 2,
                              child: CardsContent(screenSize: screenSize)),
                          Expanded(
                              flex: 2,
                              child: CardsContent1(screenSize: screenSize)),
                          Expanded(
                              flex: 2,
                              child: CardsContent2(screenSize: screenSize)),
                          Expanded(
                              flex: 2,
                              child: CardsContent3(screenSize: screenSize)),
                        ])
                  : Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                          // Expanded(
                          //     flex: 2,
                              CardsContent(screenSize: screenSize),
                          // Expanded(
                          //     flex: 2,
                              CardsContent1(screenSize: screenSize),
                          // Expanded(
                          //     flex: 2,
                              CardsContent2(screenSize: screenSize),
                          // Expanded(
                          //     flex: 2,
                              CardsContent3(screenSize: screenSize),
                        ])
            ])));
  }
}
