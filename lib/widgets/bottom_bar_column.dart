import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';

class BottomBarColumn extends StatelessWidget {
  final String heading;
  final String s1;
  final String s2;
  final String s3;

  BottomBarColumn({
    this.heading,
    this.s1,
    this.s2,
    this.s3,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: TextStyle(
              color: Colors.blueGrey[300],
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_right),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                color: Colors.white,
                onPressed: () {
                  DynamicTheme.of(context).setBrightness(
                      Theme.of(context).brightness == Brightness.dark
                          ? Brightness.light
                          : Brightness.dark);
                },
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/frequent-questions');
                },
              child:Text(
                s1,
                style: TextStyle(
                  color: Colors.blueGrey[100],
                  fontSize: 14,
                ),
              ))
            ],
          ),
          SizedBox(height: 5),
          Row(children: [
            IconButton(
              icon: Icon(Icons.arrow_right),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              color: Colors.white,
              onPressed: () {
                DynamicTheme.of(context).setBrightness(
                    Theme.of(context).brightness == Brightness.dark
                        ? Brightness.light
                        : Brightness.dark);
              },
            ),
            Text(
              s2,
              style: TextStyle(
                color: Colors.blueGrey[100],
                fontSize: 14,
              ),
            )
          ]),
          SizedBox(height: 5),
          Row(children: [
            IconButton(
              icon: Icon(Icons.arrow_right),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              color: Colors.white,
              onPressed: () {
                DynamicTheme.of(context).setBrightness(
                    Theme.of(context).brightness == Brightness.dark
                        ? Brightness.light
                        : Brightness.dark);
              },
            ),
            Text(
              s3,
              style: TextStyle(
                color: Colors.blueGrey[100],
                fontSize: 14,
              ),
            )
          ]),
        ],
      ),
    );
  }
}
