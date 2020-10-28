import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  Footer({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Column(children: [
              Stack(
                alignment: Alignment.centerLeft,
                children: [
                  AspectRatio(
                    aspectRatio: 4 / 1,
                    child: Image.asset(
                      'assets/images/fs-icon 5.png',
                      // fit: BoxFit.fill,
                    ),
                  ),
                ],
              )
            ]),
          ),
          screenSize.width > 800
              ? Expanded(flex: 4, child: Text(""))
              : Expanded(flex: 2, child: Text("")),
          Expanded(
              flex: 5,
              child: Row(children: [
                Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: Image.asset(
                      'assets/images/fb.png',
                      // fit: BoxFit.fill,
                    )),
                Image.asset(
                  'assets/images/twitter.png',
                  // fit: BoxFit.fill,
                ),
              ])),
          Expanded(
            flex: 4,
            child: Column(children: [
              Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      AspectRatio(
                        aspectRatio: 4 / 2,
                        child: Image.asset(
                          'assets/images/image 8.png',
                          // fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ))
            ]),
          ),
        ]);
  }
}
