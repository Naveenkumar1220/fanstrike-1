import 'package:explore/widgets/bottom_bar_column.dart';
import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';
 
const Color footerBg = const Color(0x192A56);
 
class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      // color: Theme.of(context).bottomAppBarColor,
      // color: Color(0x192A56).withOpacity(1),
      color: Color.fromRGBO(25, 42, 86, 1),
      child: ResponsiveWidget.isSmallScreen(context)
          ? Column(
              children: [
                // Row(
                //   mainAxisSize: MainAxisSize.max,
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                    BottomBarColumn(
                      heading: '',
                      s1: 'About',
                      s2: 'Write to Us',
                      s3: 'Sign up for download app',
                    ),
                    BottomBarColumn(
                      heading: '',
                      s1: 'How To Play',
                      s2: 'Points Tabel',
                      s3: 'Refer and Earn',
                    ),
                  // ],
                // ),
                // Row(
                //   mainAxisSize: MainAxisSize.max,
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                    BottomBarColumn(
                      heading: '',
                      s1: 'Faq',
                      s2: 'Become an Influencer',
                      s3: 'Offers',
                    ),
                    BottomBarColumn(
                      heading: '',
                      s1: 'DownLoad',
                      s2: 'Terms and Conditions',
                      s3: 'Privacy',
                    ),
                  // ]),
                // Container(
                //   color: Colors.blueGrey,
                //   width: double.maxFinite,
                //   height: 1,
                // ),
                // SizedBox(height: 20),
              ],
            )
          : Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomBarColumn(
                      heading: '',
                      s1: 'About',
                      s2: 'Write to Us',
                      s3: 'Sign up for download app',
                    ),
                    BottomBarColumn(
                      heading: '',
                      s1: 'How To Play',
                      s2: 'Points Tabel',
                      s3: 'Refer and Earn',
                    ),
                    BottomBarColumn(
                      heading: '',
                      s1: 'Faq',
                      s2: 'Become an Influencer',
                      s3: 'Offers',
                    ),
                    BottomBarColumn(
                      heading: '',
                      s1: 'DownLoad',
                      s2: 'Terms and Conditions',
                      s3: 'Privacy',
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}