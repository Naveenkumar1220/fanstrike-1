import 'package:flutter/material.dart';

// class SectionFour extends StatelessWidget {
class RegistrationForm extends StatefulWidget {
  // static const String route = '/';

  @override
  _RegistrationFormPage createState() => _RegistrationFormPage();
}

class _RegistrationFormPage extends State<RegistrationForm> {
  // ScrollController _scrollController;
  double _scrollPosition = 0;
  double _opacity = 0;
  TextStyle style = TextStyle(fontFamily: 'Poppins', fontSize: 20);

  // SectionFour({
  //   Key key,
  //   @required this.screenSize,
  // }) : super(key: key);

  // final Size screenSize;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.60
        ? _scrollPosition / (screenSize.height * 0.60)
        : 1;
    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(0.0, 15.0, 20.0, 15.0),
        hintText: "Email",
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey),
        ),
      ),
    );
    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(0.0, 15.0, 20.0, 15.0),
        hintText: "Password",
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey),
        ),
      ),
    );
    final phoneNumber = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(0.0, 15.0, 20.0, 15.0),
        hintText: "Phone number",
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey),
        ),
      ),
    );
    final referenceCode = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(0.0, 15.0, 20.0, 15.0),
        hintText: "Reference code",
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey),
        ),
      ),
    );

    return Container(
        height: 550,
        margin: screenSize.width > 800
            ? const EdgeInsets.all(40)
            : const EdgeInsets.only(bottom: 40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
          color: Color.fromRGBO(242, 241, 241, 1),
        ),
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: screenSize.width > 800 ? 447 : screenSize.width,
                      height: 62,
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: screenSize.width > 800
                                    ? 447
                                    : screenSize.width - 80,
                                height: 62,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                  ),
                                  color: Color.fromRGBO(253, 89, 59, 1),
                                ))),
                        Positioned(
                            top: screenSize.width > 800 ? 16 : 20,
                            left: screenSize.width > 800 ? 31 : 10,
                            child: Text(
                              'Get upto ₹ 100 Bonus Cash on sign-up',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Poppins',
                                  fontSize: screenSize.width > 800 ? 20 : 16,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.2),
                            )),
                      ])),
                  Padding(padding: EdgeInsets.only(top: 20), child: emailField),
                  Padding(
                      padding: EdgeInsets.only(top: 20), child: phoneNumber),
                  Padding(
                      padding: EdgeInsets.only(top: 20), child: referenceCode),
                  Padding(
                      padding: EdgeInsets.only(top: 20), child: passwordField),
                  Container(
                      width: 260,
                      height: 60,
                      margin: const EdgeInsets.only(top: 30, bottom: 30),
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 260,
                                height: 60,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Container(
                                          width: 260,
                                          height: 60,
                                          child: Stack(children: <Widget>[
                                            Positioned(
                                                top: 0,
                                                left: 0,
                                                child: Container(
                                                    width: 260,
                                                    height: 60,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(58),
                                                        topRight:
                                                            Radius.circular(58),
                                                        bottomLeft:
                                                            Radius.circular(58),
                                                        bottomRight:
                                                            Radius.circular(58),
                                                      ),
                                                      gradient: LinearGradient(
                                                          begin: Alignment(
                                                              0.962270200252533,
                                                              0.043561749160289764),
                                                          end: Alignment(-0.043561749160289764, 0.04329774156212807),
                                                          colors: [
                                                            Color.fromRGBO(
                                                                255, 93, 62, 1),
                                                            Color.fromRGBO(
                                                                210, 16, 1, 1)
                                                          ]),
                                                    ))),
                                            Positioned(
                                                top: 18,
                                                left: 88,
                                                child: Text(
                                                  'Register',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1),
                                                      fontFamily: 'Poppins',
                                                      fontSize: 20,
                                                      letterSpacing:
                                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      height: 1.3),
                                                )),
                                          ]))),
                                ]))),
                      ])),
                  Text(
                    'Already have an account? Login',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(86, 69, 69, 1),
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.2),
                  ),
                ])));
  }
}
