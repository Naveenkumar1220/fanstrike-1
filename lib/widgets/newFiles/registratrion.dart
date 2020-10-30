import 'package:explore/widgets/newFiles/sectionOne.dart';
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
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

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
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    // final loginButon = Material(
    //   elevation: 5.0,
    //   borderRadius: BorderRadius.circular(30.0),
    //   color: Color(0xff01A0C7),
    //   child: MaterialButton(
    //     minWidth: MediaQuery.of(context).size.width,
    //     padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
    //     onPressed: () {},
    //     child: Text("Login",
    //         textAlign: TextAlign.center,
    //         style: style.copyWith(
    //             color: Colors.white, fontWeight: FontWeight.bold)),
    //   ),
    // );

    return screenSize.width > 800
        ? Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [emailField, passwordField]))
        : Container();
  }
}
