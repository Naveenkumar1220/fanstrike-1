import 'package:flutter/material.dart';

class Expansiontile extends StatefulWidget {
  Expansiontile({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  _ExpansiontileState createState() => _ExpansiontileState();
}

class _ExpansiontileState extends State<Expansiontile> {
  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.symmetric(horizontal: 30.0),
    return Column(
      children: <Widget>[
        SizedBox(height: 20.0),
        ExpansionTile(
          title: Text(
            "What is FanStrike?",
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          children: <Widget>[
            ListTile(
              title: Text(
                'FanStrike is a fantasy sports app which aims to revolutionize the fantasy gaming forever. With exciting game models and contests, FanStrike brings you the most thrilling fantasy experience. Keep your eyes peeled off, it’s going to be amazing! ',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(86, 69, 69, 1),
                    fontFamily: 'PoppinsLight',
                    fontSize: 18,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.6666666666666667),
              ),
            ),
          ],
        ),
        ExpansionTile(
          title: Text(
            "What is Fantasy sports?",
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          children: <Widget>[
            ListTile(
              title: Text('data'),
            )
          ],
        ),
        ExpansionTile(
          title: Text(
            "Is Fantasy Gaming legal?",
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          children: <Widget>[
            ListTile(
              title: Text('data'),
            )
          ],
        ),
      ],
      // ),
    );
  }
}
