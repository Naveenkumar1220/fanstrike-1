import 'package:explore/widgets/newFiles/referAndEarn/referandEarn/refRight.dart';
import 'package:explore/widgets/newFiles/referAndEarn/referandEarn/refleft.dart';
// import 'package:explore/widgets/newFiles/howToPlay/utils/cardsContent.dart';
import 'package:flutter/material.dart';

class RefAndEarnSectionOne extends StatelessWidget {
  RefAndEarnSectionOne({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return buildCarouselView();
  }

  Widget buildCarouselView() {
    return AspectRatio(
      aspectRatio: screenSize.width > 800 ? 4 / 2 : 4 / 3,
      // height: 450,
      // Padding(
      // padding: EdgeInsets.only(top: 80),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: RefLeft(screenSize: screenSize),
            ),
            Expanded(flex: 5, child: RefRight(screenSize: screenSize)),
            // Carouselmain(screenSize: screenSize)
          ]),
    );
  }

  // Widget buildCarouselContent() {
  //   return Padding(
  //       padding: EdgeInsets.only(top: 80),
  //       child: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceAround,
  //           crossAxisAlignment: CrossAxisAlignment.center,
  //           children: <Widget>[
  //             Expanded(
  //               flex: 5,
  //               child: LeftText(screenSize: screenSize),
  //             ),
  //             Expanded(flex: 5, child: RightSection(screenSize: screenSize)),
  //             // Carouselmain(screenSize: screenSize)
  //           ]));
  // }
}
