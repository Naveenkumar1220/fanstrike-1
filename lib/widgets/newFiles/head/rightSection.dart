import 'package:flutter/material.dart';

class RightSection extends StatelessWidget {
  RightSection({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.center,
      child: AspectRatio(aspectRatio: screenSize.width <800? 2/2 : 4/3,child: Image.asset(
        'assets/images/Group 62.png'
      ),
    ));
  }
}
