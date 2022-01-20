// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'dart:ui';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:gdg_envents_app/colors.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
          body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
              margin: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  //space
                  SizedBox(
                    height: 40,
                  ),
                  //this is GDG LOGO
                  Container(
                      child: Center(
                    child: Image.asset(
                      'images/gdg.png',
                      width: 120,
                      height: 100,
                    ),
                  )),
                  //this is "GDG Algiers" Text
                  Container(
                    child: Text(
                      'GDG Algiers',
                      style:
                          // GoogleFonts.lato(fontSize: 60),
                          TextStyle(
                              color: Colors.grey[600],
                              fontSize: 60,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),

                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'WELCOME BACK',
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Account Log In',
                      style: TextStyle(
                        color: darkblue,
                        fontFamily: 'sans-serif',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      OutlineButton(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          onPressed: () {},
                          child: Row(
                            children: <Widget>[
                              Container(
                                color: Colors.black,
                                child: SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: IconButton(
                                    onPressed: null,
                                    iconSize: 15,
                                    icon: FaIcon(FontAwesomeIcons.google),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                'Log In with Google',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ],
                          )),
                      // Padding(
                      //   padding: EdgeInsets.all(8.0),
                      //   child: TextButton(
                      //     onPressed: () {},
                      //     child: Container(
                      //       child: Text(
                      //         'Log in with Google',
                      //         style: TextStyle(fontSize: 20, color: blue),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        width: 20,
                      ),
                      // SignIn with Apple
                      FlatButton.icon(
                          onPressed: () {},
                          icon: FaIcon(FontAwesomeIcons.google),
                          label: Text('haha')),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                          height: 60,
                          width: 170,
                          child: OutlineButton(
                            onPressed: () {},
                            child: Stack(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: FaIcon(
                                    FontAwesomeIcons.google,
                                    size: 13,
                                  ),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    'Log In with Google',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                )
                              ],
                            ),
                            color: Colors.red,
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(15.0)),
                          )),
                      SizedBox(
                          height: 60,
                          width: 170,
                          child: OutlineButton(
                            highlightedBorderColor: Colors.greenAccent,
                            // splashColor: Colors.greenAccent,
                            onPressed: () {},
                            child: Stack(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: FaIcon(
                                    FontAwesomeIcons.google,
                                    size: 13,
                                  ),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    'Log In with Google',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                )
                              ],
                            ),
                            color: Colors.red,
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(15.0)),
                          )),
                    ],
                  )
                ],
              )),
        ),
      ));
}
