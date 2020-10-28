import 'package:explore/widgets/newFiles/head/leftText.dart';
import 'package:explore/widgets/newFiles/head/rightSection.dart';
// import 'package:explore/widgets/newFiles/howToPlay/utils/cardsContent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class FloatingQuickAccessBar extends StatelessWidget {
  FloatingQuickAccessBar({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(constraints: BoxConstraints(maxWidth: 1300),
    
    child :buildCarouselView()
    );}

  Widget buildCarouselView() {
    return AspectRatio(
      aspectRatio: screenSize.width >800?4/2 : 4 / 4,
        key: Key("carousel_view"),
        // height: 450,
        child: Swiper(
          // itemHeight: 450,
          key: Key("carousel_swipe"),
          outer: false,
          scale: 1,
          fade: 1.0,
          pagination: new SwiperPagination(),
          autoplay: true,
          loop: true,
          viewportFraction: 1,
          itemBuilder: (context, index) {
            return buildCarouselContent();
          },
          itemCount: 6,
        ));
  }

  Widget buildCarouselContent() {
    return Padding ( padding: EdgeInsets.only(top: screenSize.width>800? 100:50),child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: LeftText(screenSize: screenSize),
          ),
          Expanded(flex: 5, child: RightSection(screenSize: screenSize)),
          // Carouselmain(screenSize: screenSize)
        ]));
  }
}
