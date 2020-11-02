import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:explore/widgets/newFiles/footer/footer.dart';
import 'package:explore/widgets/newFiles/referAndEarn/refSectionOne.dart';
import 'package:explore/widgets/web_scrollbar.dart';
import 'package:explore/widgets/bottom_bar.dart';
import 'package:explore/widgets/explore_drawer.dart';
import 'package:explore/widgets/responsive.dart';
import 'package:explore/widgets/top_bar_contents.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BecomeInfluencer extends StatefulWidget {
  // static const String route = '/';

  @override
  _BinfluencerPage createState() => _BinfluencerPage();
}

class _BinfluencerPage extends State<BecomeInfluencer> {
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
      // backgroundColor: Theme.of(context).backgroundColor,
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
                      minHeight: screenSize.width > 800 ? 700 : 250,
                      maxWidth: screenSize.width,
                      maxHeight: screenSize.width > 800 ? 700 : 250,
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: screenSize.width > 800 ? 4 / 1 : 4 / 1,
                    // Positioned(
                    // left: 10,
                    // bottom: 0,
                    // right: 10,
                    child: Image.asset(
                      'assets/images/Stadium1.png',
                      fit: BoxFit.fitWidth,
                      width: 1300,
                      height: 400,
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: screenSize.width > 800 ? 50 : 0,
                    right: 10,
                    // bottom: 70,
                    child: RefAndEarnSectionOne(screenSize, "Be Influencer"),
                  ),
                  // child:RefAndEarnSectionOne(screenSize: screenSize),
                ],
              ),
              // SizedBox(height: screenSize.height / 8),
              Text(
                'Benefits for an influencer',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(25, 42, 86, 1),
                    fontFamily: 'Poppins',
                    fontSize: 40,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: screenSize.width>800? 1.75:1.2),
              ),
              screenSize.width>800 ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: cards(autoScreenSize: screenSize),
                    ),
                    Expanded(
                      flex: 5,
                      child: cards(autoScreenSize: screenSize),
                    ),
                    Expanded(
                      flex: 5,
                      child: cards(autoScreenSize: screenSize),
                    ),
                  ]):
                  // SizedBox(height: screenSize.height / 10),
                  Column(children: [
                      Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: cards(autoScreenSize: screenSize)
                      ),
                      SizedBox(height: screenSize.height / 10),
                      Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: cards(autoScreenSize: screenSize)
                      ),
                      SizedBox(height: screenSize.height / 10),
                      Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: cards(autoScreenSize: screenSize)
                      )
                  ],),
              SizedBox(height: screenSize.height / 10),
              screenSize.width>800 ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: cards(autoScreenSize: screenSize),
                    ),
                    Expanded(
                      flex: 5,
                      child: cards(autoScreenSize: screenSize),
                    ),
                    Expanded(
                      flex: 5,
                      child: cards(autoScreenSize: screenSize),
                    ),
                  ]):
                  // SizedBox(height: screenSize.height / 10),
                  Column(children: [
                    
                      Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: cards(autoScreenSize: screenSize)
                      ),
                      SizedBox(height: screenSize.height / 10),
                      Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: cards(autoScreenSize: screenSize)
                      ),
                      SizedBox(height: screenSize.height / 10),
                      Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: cards(autoScreenSize: screenSize)
                      )
                  ],),
              SizedBox(height: screenSize.height / 10),
              BottomBar(),
              Footer(screenSize: screenSize)
            ],
          ),
        ),
      ),
    );
  }

  Widget cards({String title, autoScreenSize, String text}) {
    return Container(
        width: 800,
        // height: 482,
        color: Color.fromRGBO(196, 196, 196, 0.1),
        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 13),
                  child: Column(children: [
                    Image.asset('assets/images/imagePH.png',
                        width: 308, height: 290),
                    Text(
                      "Communicate with their audience",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(86, 69, 69, 1),
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5),
                    )
                  ])),
            ]));
  }
}
