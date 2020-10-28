import 'package:explore/widgets/newFiles/howToPlay/utils/knowMore1.dart';
import 'package:explore/widgets/newFiles/howToPlay/utils/knowMore2.dart';
import 'package:explore/widgets/newFiles/howToPlay/utils/knowMore3.dart';
import 'package:explore/widgets/newFiles/howToPlay/utils/knowMore4.dart';
import 'package:explore/widgets/newFiles/referAndEarn/referandEarn/refinfo.dart';
import 'package:explore/widgets/newFiles/referAndEarn/referandEarn/refinfo2.dart';
import 'package:explore/widgets/newFiles/referAndEarn/referandEarn/refinfo3.dart';
import 'package:flutter/material.dart';

class RefSectionTwo extends StatelessWidget {
  RefSectionTwo({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;
  Color bg = Color(0xffc4c4c4);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(children: <Widget>[
          screenSize.width > 800
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                      ColoredBox(
                          color: Color.fromRGBO(196, 196, 196, 0.1),
                          child: Container(
                              width: 350,
                              height: 482,
                              child: RefInfo(screenSize: screenSize))),
                      ColoredBox(
                          color: Color.fromRGBO(196, 196, 196, 0.1),
                          child: Container(
                              width: 350,
                              height: 482,
                              child: RefInfo2(screenSize: screenSize))),
                      ColoredBox(
                          color: Color.fromRGBO(196, 196, 196, 0.1),
                          child: Container(
                              width: 350,
                              height: 482,
                              child: RefInfo3(screenSize: screenSize))),
                    ])
              : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                      // Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     crossAxisAlignment: CrossAxisAlignment.center,
                      //     children: <Widget>[
                            // Expanded(
                            //     flex: 2,
                                RefInfo(screenSize: screenSize),
                            // Expanded(
                            //     flex: 2,
                                RefInfo2(screenSize: screenSize),
                          // ]),
                      // Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     crossAxisAlignment: CrossAxisAlignment.center,
                      //     children: <Widget>[
                            // Expanded(
                            //     flex: 2,
                                RefInfo3(screenSize: screenSize),                            
                          // ])
                    ]),
       Padding(
        padding: EdgeInsets.only(top: 60),child:Container(
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
          )))]));
  }
}
