import 'package:flutter/material.dart';

// class SectionFour extends StatelessWidget {
class SignInForm extends StatefulWidget {
  // static const String route = '/';

  @override
  _SignInFormPage createState() => _SignInFormPage();
}

class _SignInFormPage extends State<SignInForm> {
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
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Mobile number",
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey),
        ),
      ),
    );
    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Password",
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey),
        ),
      ),
    );

    return screenSize.width > 800
        ? Container(
            height: 500,
            margin: const EdgeInsets.all(40),
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
                          width: 132,
                          height: 68,
                          child: Stack(children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Text(
                                  'Sign-Up with',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(25, 42, 86, 1),
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1.2),
                                )),
                          ])),
                      emailField,
                      passwordField,
                      Container(
                          width: 260,
                          height: 60,
                          margin: const EdgeInsets.only(top: 30),
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
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    58),
                                                            topRight:
                                                                Radius.circular(
                                                                    58),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    58),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    58),
                                                          ),
                                                          gradient: LinearGradient(
                                                              begin: Alignment(
                                                                  0.962270200252533,
                                                                  0.043561749160289764),
                                                              end: Alignment(-0.043561749160289764, 0.04329774156212807),
                                                              colors: [
                                                                Color.fromRGBO(
                                                                    255,
                                                                    93,
                                                                    62,
                                                                    1),
                                                                Color.fromRGBO(
                                                                    210,
                                                                    16,
                                                                    1,
                                                                    1)
                                                              ]),
                                                        ))),
                                                Positioned(
                                                    top: 15,
                                                    left: 88,
                                                    child: Text(
                                                      'Login',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color: Color.fromRGBO(
                                                              255, 255, 255, 1),
                                                          fontFamily: 'Poppins',
                                                          fontSize: 20,
                                                          letterSpacing:
                                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          height: 1.2),
                                                    )),
                                              ]))),
                                    ]))),
                          ])),
                    ])))
        : Container();
  }
}
