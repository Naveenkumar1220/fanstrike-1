import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:explore/widgets/newFiles/footer/footer.dart';
import 'package:explore/widgets/web_scrollbar.dart';
import 'package:explore/widgets/bottom_bar.dart';
import 'package:explore/widgets/explore_drawer.dart';
import 'package:explore/widgets/responsive.dart';
import 'package:explore/widgets/top_bar_contents.dart';
import 'package:flutter/material.dart';

class SignupAndDownload extends StatefulWidget {
  // static const String route = '/';

  @override
  _SignupAndDownloadPage createState() => _SignupAndDownloadPage();
}

class _SignupAndDownloadPage extends State<SignupAndDownload> {
  ScrollController _scrollController;
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.60
        ? _scrollPosition / (screenSize.height * 0.60)
        : 1;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      extendBodyBehindAppBar: true,
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              backgroundColor:
                  Theme.of(context).bottomAppBarColor.withOpacity(_opacity),
              elevation: 0,
              centerTitle: true,
              actions: [
                IconButton(
                  icon: Icon(Icons.brightness_6),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {
                    DynamicTheme.of(context).setBrightness(
                        Theme.of(context).brightness == Brightness.dark
                            ? Brightness.light
                            : Brightness.dark);
                    print(Theme.of(context).brightness);
                  },
                ),
              ],
              title: Text(
                'Fan Strike',
                style: TextStyle(
                  color: Colors.blueGrey[100],
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 3,
                ),
              ),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 150),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      decoration:
                          BoxDecoration(color: Color.fromRGBO(25, 42, 86, 1)),
                      padding: EdgeInsets.only(right: 25),
                      alignment: Alignment.centerRight,
                      child: DropdownButton<String>(
                        underline: SizedBox(),
                        hint: Text('Language',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        // dropdownColor: Colors.grey,
                        items: <String>['English', 'Hindi', 'Telugu']
                            .map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      )),
                  TopBarContents(_opacity),
                ],
              )),
      drawer: ExploreDrawer(),
      body: WebScrollbar(
        color: Colors.blueGrey,
        backgroundColor: Colors.blueGrey.withOpacity(0.3),
        width: 10,
        heightFraction: 0.3,
        controller: _scrollController,
        child: SingleChildScrollView(
          controller: _scrollController,
          physics: ClampingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                // alignment: Alignment.center,
                children: <Widget>[
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: screenSize.width,
                      minHeight: 400,
                      maxWidth: screenSize.width,
                      maxHeight: 400,
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: screenSize.width > 800 ? 4 / 1 : 4 / 3,
                    child: Image.asset(
                      'assets/images/Stadium1.png',
                      fit: BoxFit.cover,
                      width: 1300,
                      height: 400,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          top: screenSize.width > 800 ? 240 : 100, left: 75),
                      child: Text(
                        'Sign up',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Poppins',
                            fontSize: 55,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.3),
                      )),
                ],
              ),
              Container(
                child: Column(children: [
                  Text(
                    'Registration & Login ',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(25, 42, 86, 1),
                        fontFamily: 'Poppins',
                        fontSize: 30,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 2.3333333333333335),
                  ),
                  Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                  child:Text(
                    'FanStrike provides a hassle-free registration where you need a valid mobile number and e-mail account. A verification code will be sent to your mobile number and e-mail ID and once you type that in the required filed, Bingo! You’re a verified user of FanStrike. We welcome you with a cash bonus of ___ so that you can start fantasy gaming right on the go! ',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(86, 69, 69, 1),
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 2),
                  )),
                  SizedBox(height: screenSize.height / 10),
                  Text(
                    'Download app ',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(25, 42, 86, 1),
                        fontFamily: 'Poppins',
                        fontSize: 30,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 2.3333333333333335),
                  ),
                  Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                  child:Text(
                    'The Android app for FanStrike can be found at <insert play store link/apk link> and iOS app is available at <insert app store link>. Alternatively, you can download the app by going to our homepage, https://fanstrike.com and clicking on the "Download app" tab in the menu. ',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(86, 69, 69, 1),
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 2),
                  )),
                  SizedBox(height: screenSize.height / 10),
                  Text(
                    'Screenshots',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(25, 42, 86, 1),
                        fontFamily: 'Poppins',
                        fontSize: 40,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.75),
                  ),
                  screenSize.width > 800
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                              Expanded(
                                child: emptyContainer(),
                              ),
                              Expanded(
                                child: emptyContainer(),
                              ),
                              Expanded(
                                child: emptyContainer(),
                              )
                            ])
                      : Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: emptyContainer()
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: emptyContainer()
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: emptyContainer()
                            )
                          ],
                        ),
                  SizedBox(height: screenSize.height / 10),
                  Text(
                    'Not able to login? ',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(25, 42, 86, 1),
                        fontFamily: 'Poppins',
                        fontSize: 30,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 2.3333333333333335),
                  ),
                  Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                  child:Text(
                    'Check whether your inserted registered mobile number and password are right! You can also login with the OTP option by entering your mobile number. Click on “Forgot Password” if you don’t remember your password, enter your mobile number and you will be receiving an OTP so you can create a new password. If you still can’t get through, reach out to us by clicking on ‘Contact Us’ tab. ',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(86, 69, 69, 1),
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 2),
                  )),
                  SizedBox(height: screenSize.height / 10),
                  BottomBar(),
                  Footer(screenSize: screenSize),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget emptyContainer() {
    return Container(
        width: 348,
        height: 507,
        margin: const EdgeInsets.all(40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
          color: Color.fromRGBO(184, 184, 184, 1),
        ));
  }
}
