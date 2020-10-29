import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:explore/screens/about_us.dart';
import 'package:explore/screens/download.dart';
import 'package:explore/screens/howToplay.dart';
import 'package:explore/screens/pointsTabel.dart';
import 'package:explore/screens/questionsInfo.dart';
import 'package:explore/screens/refer_earn.dart';
import 'package:explore/screens/signUp.dart';
import 'package:explore/screens/signupAndDownload.dart';
import 'package:explore/screens/writeTous.dart';
import 'package:explore/utils/authentication.dart';
import 'package:flutter/material.dart';

import 'screens/home_page.dart';

void main() {
  runApp(
      // MaterialApp(
      //   title: 'Fan Strike',
      //   initialRoute: HomePage.route,
      //   debugShowCheckedModeBanner: false,
      //   routes: {
      //     HomePage.route: (context) => HomePage(),
      //     AboutUs.route: (context) => AboutUs(),
      //   },
      // )
      MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future getUserInfo() async {
    await getUser();
    setState(() {});
    print(uid);
  }

  @override
  void initState() {
    getUserInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
      defaultBrightness: Brightness.light,
      data: (brightness) {
        return brightness == Brightness.light
            ? ThemeData(
                primarySwatch: Colors.blueGrey,
                backgroundColor: Colors.white,
                cardColor: Colors.blueGrey[50],
                primaryTextTheme: TextTheme(
                  button: TextStyle(
                    color: Colors.blueGrey,
                    decorationColor: Colors.blueGrey[300],
                  ),
                  subtitle2: TextStyle(
                    color: Colors.blueGrey[900],
                  ),
                  subtitle1: TextStyle(
                    color: Colors.black,
                  ),
                  headline1: TextStyle(color: Colors.blueGrey[800]),
                ),
                bottomAppBarColor: Colors.blueGrey[900],
                iconTheme: IconThemeData(color: Colors.blueGrey),
                brightness: brightness,
              )
            : ThemeData(
                primarySwatch: Colors.blueGrey,
                backgroundColor: Colors.blueGrey[900],
                cardColor: Colors.black,
                primaryTextTheme: TextTheme(
                  button: TextStyle(
                    color: Colors.blueGrey[200],
                    decorationColor: Colors.blueGrey[50],
                  ),
                  subtitle2: TextStyle(
                    color: Colors.white,
                  ),
                  subtitle1: TextStyle(
                    color: Colors.blueGrey[300],
                  ),
                  headline1: TextStyle(
                    color: Colors.white70,
                  ),
                ),
                bottomAppBarColor: Colors.black,
                iconTheme: IconThemeData(color: Colors.blueGrey[200]),
                brightness: brightness,
              );
      },
      themedWidgetBuilder: (context, data) => MaterialApp(
          title: 'Fan Strike',
          theme: data,
          debugShowCheckedModeBanner: false,
          // home: HomePage(),
          initialRoute: '/',
          routes: {
            '/': (context) => HomePage(),
            '/refer-earn': (context) => ReferAndEarn(),
            '/frequent-questions': (context) => QuestionsFreequent(),
            '/sign-up': (context) => SignUp(),
            '/download': (context) => Download(),
            '/how-to-play': (context) => HowToPlay(),
            '/about-us': (context) => AboutUs(),
            '/points-tabel': (context) => PointsTabel(),
            '/sigunup-download': (context) => SignupAndDownload(),
            '/write-to-us': (context) => WriteToUs(),
          }),
    );
  }
}
