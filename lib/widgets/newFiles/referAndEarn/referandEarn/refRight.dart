import 'package:flutter/material.dart';

class RefRight extends StatelessWidget {
  final Size screenSize;
  final String isScreen;
  RefRight(this.screenSize, this.isScreen);

  // RefRight({
  //   Key key,
  //   @required this.screenSize,
  // }) : super(key: key);

  // final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return isScreen == "ReferAndEarn"
        ? Container(
            // alignment: Alignment.center,
            child: AspectRatio(
            aspectRatio: screenSize.width < 800 ? 2 / 3 : 4 / 3,
            child: Image.asset('assets/images/refer 1.png'),
          ))
        : isScreen == "Be Influencer"
            ? Container(
                // alignment: Alignment.center,
                child: AspectRatio(
                aspectRatio: screenSize.width < 800 ? 2 / 3 : 4 / 3,
                child: Image.asset('assets/images/Influencer2.png'),
              ))
            : Container(
                // alignment: Alignment.center,
                child: AspectRatio(
                aspectRatio: screenSize.width < 800 ? 2 / 4 : 4 / 3,
                child: Image.asset('assets/images/write2us.png'),
              ));
  }
}
