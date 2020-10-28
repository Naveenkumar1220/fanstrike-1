import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:explore/screens/home_page.dart';
import 'package:explore/utils/authentication.dart';
import 'package:explore/widgets/auth_dialog.dart';
import 'package:flutter/material.dart';

class TopBarContents extends StatefulWidget {
  final double opacity;

  TopBarContents(this.opacity);

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  bool _isProcessing = false;

  @override
  Widget build(BuildContext context) {
    // var screenSize = MediaQuery.of(context).size;

    return Container(
      // child:PreferredSize(
      // preferredSize: Size(600, 1000),
      child: Container(
        alignment: Alignment.center,
        // constraints: BoxConstraints(maxWidth: 1300),
        color: Color.fromRGBO(25, 42, 86, 0.5),
        child: Padding(
          padding: EdgeInsets.only(top: 5, left: 80, right: 0, bottom: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(width: screenSize.width / 8),
              SizedBox(
                height: 50,
                width: 1300 / 7,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Image.asset(
                    'assets/images/logo.png',
                    // fit: BoxFit.cover,
                    width: 10,
                  ),
                ),
              ),

              // Text(
              //   'FANSTRIKE',
              //   style: TextStyle(
              //     color: Colors.blueGrey[100],
              //     fontSize: 20,
              //     fontFamily: 'Montserrat',
              //     fontWeight: FontWeight.w400,
              //     letterSpacing: 3,
              //   ),
              // ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 600 / 8),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[0] = true
                              : _isHovering[0] = false;
                        });
                      },
                      onTap: () {
                        Navigator.pushNamed(context, '/about-us');
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'ABOUT',
                            style: TextStyle(
                              color: _isHovering[0]
                                  ? Colors.blue[200]
                                  : Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[0],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 600 / 20),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[1] = true
                              : _isHovering[1] = false;
                        });
                      },
                      onTap: () {
                        Navigator.pushNamed(context, '/how-to-play');
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'HOW TO PLAY',
                            style: TextStyle(
                              color: _isHovering[1]
                                  ? Colors.blue[200]
                                  : Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[1],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 600 / 30),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[1] = true
                              : _isHovering[1] = false;
                        });
                      },
                      onTap: () {
                        Navigator.pushNamed(context, '/sign-up');
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'SIGN UP',
                            style: TextStyle(
                              color: _isHovering[1]
                                  ? Colors.blue[200]
                                  : Colors.white,
                            ),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[1],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // IconButton(
              //   icon: Icon(Icons.brightness_6),
              //   splashColor: Colors.transparent,
              //   highlightColor: Colors.transparent,
              //   color: Colors.white,
              //   onPressed: () {
              //     DynamicTheme.of(context).setBrightness(
              //         Theme.of(context).brightness == Brightness.dark
              //             ? Brightness.light
              //             : Brightness.dark);
              //   },
              // ),
              // SizedBox(
              //   width: screenSize.width / 50,
              // ),
              // InkWell(
              //   onHover: (value) {
              //     setState(() {
              //       value ? _isHovering[3] = true : _isHovering[3] = false;
              //     });
              //   },
              //   onTap: userEmail == null
              //       ? () {
              //           showDialog(
              //             context: context,
              //             builder: (context) => AuthDialog(),
              //           );
              //         }
              //       : null,
              //   child: userEmail == null
              //       ? Text(
              //           'Language',
              //           style: TextStyle(
              //             color: _isHovering[3] ? Colors.white : Colors.white70,
              //           ),
              //         )
              //       : Row(
              //           children: [
              //             CircleAvatar(
              //               radius: 15,
              //               backgroundImage: imageUrl != null
              //                   ? NetworkImage(imageUrl)
              //                   : null,
              //               child: imageUrl == null
              //                   ? Icon(
              //                       Icons.account_circle,
              //                       size: 30,
              //                     )
              //                   : Container(),
              //             ),
              //             SizedBox(width: 5),
              //             Text(
              //               name ?? userEmail,
              //               style: TextStyle(
              //                 color: _isHovering[3]
              //                     ? Colors.white
              //                     : Colors.white70,
              //               ),
              //             ),
              //             SizedBox(width: 10),
              //             FlatButton(
              //               color: Colors.blueGrey,
              //               hoverColor: Colors.blueGrey[700],
              //               highlightColor: Colors.blueGrey[800],
              //               onPressed: _isProcessing
              //                   ? null
              //                   : () async {
              //                       setState(() {
              //                         _isProcessing = true;
              //                       });
              //                       await signOut().then((result) {
              //                         print(result);
              //                         Navigator.of(context).pushReplacement(
              //                           MaterialPageRoute(
              //                             fullscreenDialog: true,
              //                             builder: (context) => HomePage(),
              //                           ),
              //                         );
              //                       }).catchError((error) {
              //                         print('Sign Out Error: $error');
              //                       });
              //                       setState(() {
              //                         _isProcessing = false;
              //                       });
              //                     },
              //               shape: RoundedRectangleBorder(
              //                 borderRadius: BorderRadius.circular(15),
              //               ),
              //               child: Padding(
              //                 padding: EdgeInsets.only(
              //                   top: 8.0,
              //                   bottom: 8.0,
              //                 ),
              //                 child: _isProcessing
              //                     ? CircularProgressIndicator()
              //                     : Text(
              //                         'Sign out',
              //                         style: TextStyle(
              //                           fontSize: 14,
              //                           color: Colors.white,
              //                         ),
              //                       ),
              //               ),
              //             )
              //           ],
              //         ),
              // ),
              // IconButton(
              //   icon: Icon(Icons.arrow_drop_down_sharp),
              //   splashColor: Colors.transparent,
              //   highlightColor: Colors.transparent,
              //   color: Colors.white,
              //   onPressed: () {
              //     DynamicTheme.of(context).setBrightness(
              //         Theme.of(context).brightness == Brightness.dark
              //             ? Brightness.light
              //             : Brightness.dark);
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
