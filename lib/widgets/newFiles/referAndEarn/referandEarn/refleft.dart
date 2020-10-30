import 'package:flutter/material.dart';

class RefLeft extends StatelessWidget {
  final Size screenSize;
  final String isScreen;

  RefLeft(this.screenSize, this.isScreen);

  // RefLeft({
  //   Key key,
  //   @required this.screenSize,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isScreen == "ReferAndEarn"
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(
                        left: screenSize.width > 800 ? 200 : 50),
                    child: Text(
                      'Refer & Earn',
                      textAlign: TextAlign.left,
                      textScaleFactor: screenSize.width > 800 ? 1 : 0.4,
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Poppins',
                          fontSize: 60,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    )),
                Padding(
                    padding: EdgeInsets.only(
                        left: screenSize.width > 800 ? 200 : 50,
                        top: screenSize.width > 800 ? 100 : 30),
                    child: Text(
                      'Invite your friends and win \$150 as bonus cash ',
                      textAlign: TextAlign.left,
                      textScaleFactor: screenSize.width > 800 ? 1 : 0.4,
                      style: TextStyle(
                          color: Color.fromRGBO(25, 42, 86, 1),
                          fontFamily: 'PoppinsBold',
                          fontSize: 50,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          // fontWeight: FontWeight.normal,
                          height: 1.5),
                    )),
              ])
        : isScreen == "Be Influencer"
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(
                            left: screenSize.width > 800 ? 200 : 50),
                        child: Text(
                          'Become Influencer',
                          textAlign: TextAlign.left,
                          textScaleFactor: screenSize.width > 800 ? 1 : 0.4,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Poppins',
                              fontSize: 60,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Padding(
                        padding: EdgeInsets.only(
                            left: screenSize.width > 800 ? 200 : 50,
                            top: screenSize.width > 800 ? 100 : 30),
                        child: Text(
                          'How many people react when you say Hi on Social Media? Hundreds, thousands or lakhs! Well, then here is a chance to become a super striker. Join us in this revolution of digital sports, become an influencer for us and promote Fanstrike in your circle. Your demands are our treat! ',
                          textAlign: TextAlign.left,
                          textScaleFactor: screenSize.width > 800 ? 1 : 0.4,
                          style: TextStyle(
                              color: Color.fromRGBO(25, 42, 86, 1),
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              // fontWeight: FontWeight.normal,
                              height: 1.5),
                        )),
                  ])
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(
                            left: screenSize.width > 800 ? 200 : 50),
                        child: Text(
                          'Write to us',
                          textAlign: TextAlign.left,
                          textScaleFactor: screenSize.width > 800 ? 1 : 0.4,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Poppins',
                              fontSize: 60,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Padding(
                        padding: EdgeInsets.only(
                            left: screenSize.width > 800 ? 200 : 50,
                            top: screenSize.width > 800 ? 100 : 30),
                        child: Text(
                          'We delivered the best to you. We also know that we can do better, we want to offer something that writes Appreciate instead of Feedback. That is not going to happen unless you express what hurts you, what troubles you, what puzzles you and what amazes you. ',
                          textAlign: TextAlign.left,
                          textScaleFactor: screenSize.width > 800 ? 1 : 0.4,
                          style: TextStyle(
                              color: Color.fromRGBO(25, 42, 86, 1),
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              // fontWeight: FontWeight.normal,
                              height: 1.5),
                        )),
                  ]);
  }
}
