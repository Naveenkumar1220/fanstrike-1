import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:explore/widgets/expansiontail.dart';
import 'package:explore/widgets/newFiles/footer/footer.dart';
import 'package:explore/widgets/web_scrollbar.dart';
import 'package:explore/widgets/bottom_bar.dart';
import 'package:explore/widgets/explore_drawer.dart';
import 'package:explore/widgets/responsive.dart';
import 'package:explore/widgets/top_bar_contents.dart';
import 'package:flutter/material.dart';

class QuestionsFreequent extends StatefulWidget {
  // static const String route = '/';

  @override
  _QuesnFreequent createState() => _QuesnFreequent();
}

class _QuesnFreequent extends State<QuestionsFreequent> {
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
                        'Frequently Asked Questions ',
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
                          // color: Colors.red,
                          constraints: BoxConstraints(maxWidth: 1300),
                          child: Column(
                            children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 5,
                                      child: titleBox(
                                          title: "General",
                                          autoscreensize: screenSize),
                                    ),
                                    Expanded(
                                      flex: 5,
                                      child: titleBox(
                                          title: "Registration",
                                          autoscreensize: screenSize),
                                    ),
                                  ]),
                              SizedBox(height: screenSize.height / 10),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 5,
                                      child: titleBox(
                                          title: "General",
                                          autoscreensize: screenSize),
                                    ),
                                    Expanded(
                                      flex: 5,
                                      child: titleBox(
                                          title: "Registration",
                                          autoscreensize: screenSize),
                                    ),
                                  ]),
                              SizedBox(height: screenSize.height / 10),
                              BottomBar(),
                              Footer(screenSize: screenSize)
                            ],
                          ))
                  : Column(
                      children: [
                        titleBox(title: "General", autoscreensize: screenSize),
                        SizedBox(height: screenSize.height / 10),
                        titleBox(
                            title: "Registration", autoscreensize: screenSize),
                        SizedBox(height: screenSize.height / 10),
                        titleBox(
                            title: "Registration", autoscreensize: screenSize),
                        SizedBox(height: screenSize.height / 10),
                        BottomBar(),
                        Footer(screenSize: screenSize)
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Widget titleBox({String title, autoscreensize}) {
    return Container(
        width: 622,
        // height: 482,
        color: Color.fromRGBO(196, 196, 196, 0.1),
        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 30,top:15),
                  child: Text(
                    title,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontFamily: 'Poppins',
                        fontSize: 28,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.3),
                  )),
              Expansiontile(screenSize: autoscreensize),
            ]));
  }
}
