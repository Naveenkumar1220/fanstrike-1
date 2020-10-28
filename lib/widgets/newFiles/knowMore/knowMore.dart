import 'package:explore/widgets/newFiles/howToPlay/utils/knowMore1.dart';
import 'package:explore/widgets/newFiles/howToPlay/utils/knowMore2.dart';
import 'package:explore/widgets/newFiles/howToPlay/utils/knowMore3.dart';
import 'package:explore/widgets/newFiles/howToPlay/utils/knowMore4.dart';
import 'package:flutter/material.dart';

class KnowMore extends StatelessWidget {
  KnowMore({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(children: <Widget>[
          Text(
            'Know More',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(25, 42, 86, 1),
                fontFamily: 'Poppins',
                fontSize: screenSize.width > 800 ? 60 : 40,
                letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1),
          ),
          screenSize.width > 800
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                      Expanded(
                          flex: 2, child: KnowMore1(screenSize: screenSize)),
                      Expanded(
                          flex: 2, child: KnowMore2(screenSize: screenSize)),
                      Expanded(
                          flex: 2, child: KnowMore3(screenSize: screenSize)),
                      Expanded(
                          flex: 2, child: KnowMore4(screenSize: screenSize)),
                    ])
              : Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                  //     Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //         children: <Widget>[
                  //           Expanded(
                  //               flex: 2,
                                KnowMore1(screenSize: screenSize),
                            // Expanded(
                            //     flex: 2,
                                KnowMore2(screenSize: screenSize),
                          // ]),
                      // Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     crossAxisAlignment: CrossAxisAlignment.center,
                      //     children: <Widget>[
                      //       Expanded(
                      //           flex: 2,
                                KnowMore3(screenSize: screenSize),
                            // Expanded(
                            //     flex: 2,
                            KnowMore4(screenSize: screenSize),
                          // ])
                    ]),
          screenSize.width > 800
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                      Expanded(
                          flex: 2, child: KnowMore1(screenSize: screenSize)),
                      Expanded(
                          flex: 2, child: KnowMore2(screenSize: screenSize)),
                      Expanded(
                          flex: 2, child: KnowMore3(screenSize: screenSize)),
                      Expanded(
                          flex: 2, child: KnowMore4(screenSize: screenSize)),
                    ])
              : Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                      // Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     crossAxisAlignment: CrossAxisAlignment.center,
                      //     children: <Widget>[
                      //       Expanded(
                      //           flex: 2,
                                KnowMore1(screenSize: screenSize),
                            // Expanded(
                            //     flex: 2,
                                KnowMore2(screenSize: screenSize),
                          // ]),
                      // Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     crossAxisAlignment: CrossAxisAlignment.center,
                      //     children: <Widget>[
                      //       Expanded(
                      //           flex: 2,
                                KnowMore3(screenSize: screenSize),
                            // Expanded(
                            //     flex: 2,
                                KnowMore4(screenSize: screenSize),
                          // ])
                    ]),
        ]));
  }
}
