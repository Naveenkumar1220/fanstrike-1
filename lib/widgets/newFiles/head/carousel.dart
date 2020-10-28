// import 'package:flutter_swiper/flutter_swiper.dart';
// import 'package:flutter_page_indicator/flutter_page_indicator.dart';
// import 'package:flutter/material.dart';

// class Carouselmain extends StatelessWidget {
//   Carouselmain({
//     Key key,
//     @required this.screenSize,
//   }) : super(key: key);

//   final Size screenSize;

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//         appBar: new AppBar(
//           title: new Text("Custom Pagination"),
//         ),
//         body: new Column(
//           children: <Widget>[
//             new Expanded(
//               child: new Swiper(
//                 itemBuilder: (BuildContext context, int index) {
//                   return new Image.asset(
//                     images[index],
//                     fit: BoxFit.fill,
//                   );
//                 },
//                 autoplay: true,
//                 itemCount: images.length,
//                 pagination: new SwiperPagination(
//                     margin: new EdgeInsets.all(0.0),
//                     builder: new SwiperCustomPagination(builder:
//                         (BuildContext context, SwiperPluginConfig config) {
//                       return new ConstrainedBox(
//                         child: new Container(
//                             color: Colors.white,
//                             child: new Text(
//                               "${titles[config.activeIndex]} ${config.activeIndex + 1}/${config.itemCount}",
//                               style: new TextStyle(fontSize: 20.0),
//                             )),
//                         constraints: new BoxConstraints.expand(height: 50.0),
//                       );
//                     })),
//                 control: new SwiperControl(),
//               ),
//             ),
//             new Expanded(
//               child: new Swiper(
//                 itemBuilder: (BuildContext context, int index) {
//                   return new Image.asset(
//                     images[index],
//                     fit: BoxFit.fill,
//                   );
//                 },
//                 autoplay: true,
//                 itemCount: images.length,
//                 pagination: new SwiperPagination(
//                     margin: new EdgeInsets.all(0.0),
//                     builder: new SwiperCustomPagination(builder:
//                         (BuildContext context, SwiperPluginConfig config) {
//                       return new ConstrainedBox(
//                         child: new Row(
//                           children: <Widget>[
//                             new Text(
//                               "${titles[config.activeIndex]} ${config.activeIndex + 1}/${config.itemCount}",
//                               style: TextStyle(fontSize: 20.0),
//                             ),
//                             new Expanded(
//                               child: new Align(
//                                 alignment: Alignment.centerRight,
//                                 child: new DotSwiperPaginationBuilder(
//                                         color: Colors.black12,
//                                         activeColor: Colors.black,
//                                         size: 10.0,
//                                         activeSize: 20.0)
//                                     .build(context, config),
//                               ),
//                             )
//                           ],
//                         ),
//                         constraints: new BoxConstraints.expand(height: 50.0),
//                       );
//                     })),
//                 control: new SwiperControl(color: Colors.redAccent),
//               ),
//             )
//           ],
//         ));
//   }
// }
