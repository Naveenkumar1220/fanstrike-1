import 'package:flutter/material.dart';

class RefRight extends StatelessWidget {
  RefRight({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
        // alignment: Alignment.center,
        child: AspectRatio(
      aspectRatio: screenSize.width < 800 ? 2 / 3 : 4 / 3,
      child: Image.asset('assets/images/refer 1.png'),
    ));
  }
}
