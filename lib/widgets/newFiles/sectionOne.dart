import 'package:flutter/material.dart';

class SectionOne extends StatelessWidget {
  SectionOne(
      {Key key,
      @required this.screenSize,
      this.titleString,
      this.description,
      this.imgUrl})
      : super(key: key);

  final Size screenSize;
  final String titleString;
  final String description;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return screenSize.width > 800
        ? Container(
            decoration: BoxDecoration(
                border: Border(
              bottom: BorderSide(
                //                    <--- top side
                color: Colors.grey,
                width: 0.5,
              ),
            )),
            child: Padding(
                padding: EdgeInsets.only(top: 30, bottom: 30),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        // decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(10), color: Colors.green),
                        // margin: const EdgeInsets.only(top: 30.0),
                        flex: 5,
                        child: Container(
                          // height: 00,
                          // width: 1,
                          child: AspectRatio(
                              aspectRatio: 4 / 2,
                              child: Image.asset(
                                'assets/images/referAndEarn.png',
                                // width: 457,
                                // height: 282,
                              )),
                        ),
                      ),
                      Expanded(
                          flex: 5,
                          child: SectionRight(
                              screenSize: screenSize,
                              titleString: titleString,
                              description: description)),
                    ])))
        : Container(
            decoration: BoxDecoration(
                border: Border(
              bottom: BorderSide(
                //                    <--- top side
                color: Colors.grey,
                width: 0.5,
              ),
            )),child:Padding(
            padding: EdgeInsets.only(top: 30,bottom: 30),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    // height: 00,
                    // width: 1,

                    child: Image.asset(
                      'assets/images/referAndEarn.png',
                      width: 300,
                      height: 282,
                    ),
                  ),
                  Padding(
                      padding:
                          EdgeInsets.all(screenSize.width > 800 ? 0 : 15.0),
                      child: SectionRight(
                          screenSize: screenSize,
                          titleString: titleString,
                          description: description)),
                ])));
  }
}

class SectionRight extends StatelessWidget {
  SectionRight(
      {Key key, @required this.screenSize, this.titleString, this.description})
      : super(key: key);

  final Size screenSize;
  final String titleString;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
      Text(
        titleString,
        textAlign: TextAlign.left,
        softWrap: true,
        textScaleFactor: screenSize.width > 800 ? 1 : 0.5,
        style: TextStyle(
            color: Color.fromRGBO(25, 42, 86, 1),
            fontFamily: 'PoppinsBold',
            fontSize: 60,
            letterSpacing:
                0 /*percentages not used in flutter. defaulting to zero*/,
            fontWeight: FontWeight.normal,
            height: 1),
      ),
      Text(description,
          textAlign: TextAlign.left,
          softWrap: true,
          textScaleFactor: screenSize.width > 800 ? 1 : 0.7,
          style: TextStyle(
              color: Color.fromRGBO(86, 69, 69, 1),
              fontFamily: 'PoppinsLight',
              fontSize: 20,
              letterSpacing:
                  0 /*percentages not used in flutter. defaulting to zero*/,
              fontWeight: FontWeight.normal,
              height: 2)),
      Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        Container(
            alignment: Alignment.center,
            width: screenSize.width > 800 ? 185 : 80,
            height: screenSize.width > 800 ? 60 : 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(screenSize.width > 800 ? 30 : 15),
              ),
              color: Color.fromRGBO(255, 255, 255, 1),
              border: Border.all(
                color: Color.fromRGBO(204, 204, 204, 1),
                width: 1,
              ),
            ),
            child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/refer-earn');
                },
            child: Text(
              'Read more',
              textAlign: TextAlign.center,
              textScaleFactor: screenSize.width > 800 ? 1 : 0.5,
              style: TextStyle(
                  color: Color.fromRGBO(86, 69, 69, 1),
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ))),
        Container(
            alignment: Alignment.center,
            width: screenSize.width > 800 ? 260 : 100,
            height: screenSize.width > 800 ? 60 : 30,
            margin: const EdgeInsets.only(left: 20.0),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                    Radius.circular(screenSize.width > 800 ? 30 : 15)),
                gradient: LinearGradient(
                    begin: Alignment(0.962270200252533, 0.043561749160289764),
                    end: Alignment(-0.043561749160289764, 0.04329774156212807),
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
            ))
      ]),
    ]);
  }
}
