import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:explore/widgets/newFiles/footer/footer.dart';
import 'package:explore/widgets/newFiles/knowMore/knowMore.dart';
import 'package:explore/widgets/web_scrollbar.dart';
import 'package:explore/widgets/bottom_bar.dart';
import 'package:explore/widgets/explore_drawer.dart';
import 'package:explore/widgets/floating_quick_access_bar.dart';
import 'package:explore/widgets/responsive.dart';
import 'package:explore/widgets/top_bar_contents.dart';
import 'package:explore/widgets/newFiles/sectionOne.dart';
import 'package:explore/widgets/newFiles/sectionTwo.dart';
import 'package:explore/widgets/newFiles/sectionThree.dart';
import 'package:explore/widgets/newFiles/sectionFour.dart';
import 'package:explore/widgets/newFiles/howToPlay/howToPlay.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String route = '/';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                    decoration:BoxDecoration(color:Color.fromRGBO(25, 42, 86, 1)),
                    padding: EdgeInsets.only(right:25),
                    alignment: Alignment.centerRight,
                  child:DropdownButton<String>(
                    underline: SizedBox(),
                    hint: Text('Language',style: TextStyle(
                  color: Colors.white,
                )),
                    // dropdownColor: Colors.grey,
                    items: <String>['English', 'Hindi', 'Telugu'].map((String value) {
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
                alignment: Alignment.center,
                children: [
                  AspectRatio(
                    aspectRatio: screenSize.width > 800 ? 4 / 2 : 4 / 4,
                    child: Image.asset(
                      'assets/images/Stadium1.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  FloatingQuickAccessBar(screenSize: screenSize),
                  // Column(
                  //   children: [
                  //     FloatingQuickAccessBar(screenSize: screenSize),
                  //     // Container(
                  //     //   child: Column(
                  //     //     children: [
                  //     //       FeaturedHeading(
                  //     //         screenSize: screenSize,
                  //     //       ),
                  //     //       FeaturedTiles(screenSize: screenSize)
                  //     //     ],
                  //     //   ),
                  //     // ),
                  //   ],
                  // )
                ],
              ),
              // SizedBox(height: screenSize.height / 8),
              Container(
                  constraints: BoxConstraints(maxWidth: 1300),
                  child: Column(children: [
                    SectionOne(
                        screenSize: screenSize,
                        imgUrl: "assets/images/referAndEarn.png",
                        titleString: "Refer & Earn",
                        description:
                            "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit"),
                    SectionTwo(screenSize: screenSize),
                    SectionThree(screenSize: screenSize),
                    SectionFour(screenSize: screenSize)
                  ])),
              // DestinationHeading(screenSize: screenSize),
              HowToPlay(screenSize: screenSize),
              // KnowMoreHeading(screenSize: screenSize),
              KnowMore(screenSize: screenSize),
              // KnowMore(screenSize: screenSize),
              // // DestinationCarousel(),
              SizedBox(height: screenSize.height / 10),
              BottomBar(),
              Footer(screenSize: screenSize)
            ],
          ),
        ),
      ),
    );
  }
}
