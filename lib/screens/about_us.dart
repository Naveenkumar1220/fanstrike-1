import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:explore/widgets/newFiles/footer/footer.dart';
import 'package:explore/widgets/web_scrollbar.dart';
import 'package:explore/widgets/bottom_bar.dart';
import 'package:explore/widgets/explore_drawer.dart';
import 'package:explore/widgets/responsive.dart';
import 'package:explore/widgets/top_bar_contents.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  // static const String route = '/';

  @override
  _AboutUsPage createState() => _AboutUsPage();
}

class _AboutUsPage extends State<AboutUs> {
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
                        'About us',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Poppins',
                            fontSize: 55,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      )),
                ],
              ),
              screenSize.width > 800
                  ? Container(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ConstrainedBox(
                                constraints: BoxConstraints(maxWidth: 1300),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Expanded(
                                        flex: 5,
                                        child: leftContent(),
                                      ),
                                      Expanded(
                                          flex: 5,
                                          child: Container(
                                              child: AspectRatio(
                                            aspectRatio: 6 / 3,
                                            child: Image.asset(
                                                'assets/images/About us 1.png'),
                                          )))
                                    ])),
                            ConstrainedBox(
                                constraints: BoxConstraints(maxWidth: 1300),
                                child: Padding(
                                    padding: EdgeInsets.only(top: 50),
                                    child: Column(
                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Your Striking 11 and the Surprises You Crave For',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    86, 69, 69, 1),
                                                fontFamily: 'PoppinsBold',
                                                fontSize: 20,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                // fontWeight: FontWeight.bold,
                                                height: 1.5),
                                          ),
                                          // SizedBox(height: screenSize.height / 10),
                                          Text(
                                            'Create your dream combination, book your spot in the best of pools, sit back and relax. Let the folks do the rest, your strikers will never let you down!',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    86, 69, 69, 1),
                                                fontFamily: 'Poppins',
                                                fontSize: 18,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1.5),
                                          ),
                                        ]))),
                            ConstrainedBox(
                                constraints: BoxConstraints(maxWidth: 1300),
                                child: Padding(
                                    padding: EdgeInsets.only(top: 50),
                                    child: Column(
                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Kids! There Ain’t Any Monopoly, You’re Not the Only One Here',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    86, 69, 69, 1),
                                                fontFamily: 'PoppinsBold',
                                                fontSize: 20,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                // fontWeight: FontWeight.bold,
                                                height: 1.5),
                                          ),
                                          // SizedBox(height: screenSize.height / 10),
                                          Text(
                                            'What’s the fun in competing when there is no real competitor? Introduce your expertise to the world, locking horns with the strikers across the world. We’re damn excited to see you in the leaderboard!',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    86, 69, 69, 1),
                                                fontFamily: 'Poppins',
                                                fontSize: 18,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1.5),
                                          ),
                                        ]))),
                            ConstrainedBox(
                                constraints: BoxConstraints(maxWidth: 1300),
                                child: Padding(
                                    padding: EdgeInsets.only(top: 50),
                                    child: Column(
                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Hustle Free Smooth Interface',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    86, 69, 69, 1),
                                                fontFamily: 'PoppinsBold',
                                                fontSize: 20,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                // fontWeight: FontWeight.bold,
                                                height: 1.5),
                                          ),
                                          // SizedBox(height: screenSize.height / 10),
                                          Text(
                                            'Your title cards, interval and the climax are as simple as you watch a one-minute video clip. We recommend you to sign-up straightaway and explore what’s there in FanStrike instead of reading all this boring stuff. Wish you good luck brus and gals!!',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    86, 69, 69, 1),
                                                fontFamily: 'Poppins',
                                                fontSize: 18,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1.5),
                                          ),
                                        ]))),
                            SizedBox(height: screenSize.height / 10),
                            BottomBar(),
                            Footer(screenSize: screenSize),
                          ]),
                    )
                  : SizedBox(height: screenSize.height / 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget leftContent() {
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Thrill. Guts. Sports. Fantasy',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(86, 69, 69, 1),
                  fontFamily: 'PoppinsBold',
                  fontSize: 20,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1.5),
            ),
            Text(
              'Hey you...dear freaks and folks... let us revolutionalize the era of digital sports.Install Fanstrike to strike up your chances of leading the dream combinations. COmpete with strikers across the world and get rewarded for your expertise in sports,predictions and have fun while experimenting with unlimited combinations.\n\n'
              'Time to fire up your spirits and experience the world beyond fantasy. FanStrike doesn’t want to limit itself to the basic concept of fantasy. Skip few months and you’ll find hell lot of games and exciting contests in FanStrike luring your fingertips.\n\n'
              'But we are in hurry, just as you. We couldn’t wait so long to meet the folks outside. We are here in the play store with what exactly you need -',
              style: TextStyle(
                  color: Color.fromRGBO(86, 69, 69, 1),
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1.5),
            ),
          ]),
    );
  }
}
