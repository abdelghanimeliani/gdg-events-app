// ignore_for_file: prefer_const_constructors, deprecated_member_use, unnecessary_new, prefer_const_literals_to_create_immutables
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
                      height: 52,
                      // color: Colors.red,
                      child: Center(
                        child: Image.asset(
                          'images/gdg.png',
                          width: 120,
                          height: 90,
                        ),
                      )),
                  //this is "GDG Algiers" Text
                  Text(
                    'GDG Algiers',
                    style:
                        // GoogleFonts.lato(fontSize: 60),
                        TextStyle(
                            color: Colors.grey[600],
                            fontSize: 50,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 75,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'WELCOME BACK',
                      style: TextStyle(
                        color: iconsColor,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
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
                  SizedBox(height: 12),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: <Widget>[
                  //       SizedBox(
                  //           height: 55,
                  //           width: 160,
                  //           child: OutlinedButton(
                  //             onPressed: () {},
                  //             child: Stack(
                  //               children: <Widget>[
                  //                 Align(
                  //                   alignment: Alignment.centerLeft,
                  //                   child: FaIcon(
                  //                     FontAwesomeIcons.google,
                  //                     size: 13,
                  //                   ),
                  //                 ),
                  //                 SizedBox(
                  //                   width: 40,
                  //                 ),
                  //                 Align(
                  //                   alignment: Alignment.centerRight,
                  //                   child: Text(
                  //                     'Log In with Google',
                  //                     style: TextStyle(
                  //                         // color: Colors.grey,
                  //                         fontSize: 12,
                  //                         fontFamily: 'Poppins'),
                  //                   ),
                  //                 )
                  //               ],
                  //             ),
                  //             style: ButtonStyle(
                  //               // backgroundColor: Colors.red,
                  //               // overlayColor: green,
                  //               shape: MaterialStateProperty.all(
                  //                 RoundedRectangleBorder(
                  //                   borderRadius: BorderRadius.circular(15.0),
                  //                 ),
                  //               ),
                  //             ),
                  //           )),
                  //       SizedBox(
                  //           height: 55,
                  //           width: 160,
                  //           child: OutlineButton(
                  //             highlightedBorderColor: Colors.greenAccent,
                  //             // splashColor: Colors.greenAccent,
                  //             onPressed: () {},
                  //             child: Stack(
                  //               children: <Widget>[
                  //                 Align(
                  //                   alignment: Alignment.centerLeft,
                  //                   child: FaIcon(
                  //                     FontAwesomeIcons.apple,
                  //                     size: 17,
                  //                   ),
                  //                 ),
                  //                 SizedBox(
                  //                   width: 40,
                  //                 ),
                  //                 Align(
                  //                   alignment: Alignment.centerRight,
                  //                   child: Text(
                  //                     'Log In with Apple',
                  //                     style: TextStyle(
                  //                         fontSize: 12, fontFamily: 'Poppins'),
                  //                     // style: TextStyle(color: Colors.grey),
                  //                   ),
                  //                 )
                  //               ],
                  //             ),
                  //             color: Colors.red,
                  //             shape: new RoundedRectangleBorder(
                  //                 borderRadius:
                  //                     new BorderRadius.circular(15.0)),
                  //           )),
                  //     ],
                  //   ),
                  // ),
                  // //second design
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 55,
                          width: 160,
                          child: RawMaterialButton(
                            splashColor: Colors.black,
                            fillColor: ghostwhite,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(width: 20),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: FaIcon(
                                    FontAwesomeIcons.google,
                                    color: iconsColor,
                                    size: 15,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    'Log In with Google',
                                    style: TextStyle(
                                        fontSize: 11.6,
                                        fontFamily: 'Poppins',
                                        color: iconsColor),
                                    // style: TextStyle(color: Colors.grey),
                                  ),
                                )
                              ],
                            ),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(12.0),
                            ),
                            // style: OutlinedButton.styleFrom(
                            //   shape: new RoundedRectangleBorder(
                            //       borderRadius: new BorderRadius.circular(12.0)),
                            //   primary: Colors.black,
                            //   backgroundColor: Colors.grey[300],
                            // ),
                            onPressed: () {
                              print('Pressed');
                            },
                          ),
                        ),
                        SizedBox(
                          height: 55,
                          width: 160,
                          child: RawMaterialButton(
                            splashColor: blue,
                            fillColor: ghostwhite,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(width: 20),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: FaIcon(
                                    FontAwesomeIcons.apple,
                                    color: iconsColor,
                                    size: 17,
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    'Log In with Apple',
                                    style: TextStyle(
                                        fontSize: 11.6,
                                        fontFamily: 'Poppins',
                                        color: iconsColor),
                                    // style: TextStyle(color: Colors.grey),
                                  ),
                                )
                              ],
                            ),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(12.0),
                            ),
                            // style: OutlinedButton.styleFrom(
                            //   shape: new RoundedRectangleBorder(
                            //       borderRadius: new BorderRadius.circular(12.0)),
                            //   primary: Colors.black,
                            //   backgroundColor: Colors.grey[300],
                            // ),
                            onPressed: () {
                              print('Pressed');
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Align(
                    alignment: Alignment.center,
                    child: Text('Or Log In Using Email',
                        style: TextStyle(
                          color: iconsColor,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  SizedBox(height: 15),
                  SizedBox(
                    height: 100,
                    child: TextField(
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.blueAccent,
                      ),
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        suffixIcon: FaIcon(FontAwesomeIcons.googlePlay),
                        // hintText: ,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blueAccent, width: 32.0),
                            borderRadius: BorderRadius.circular(12.0)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  )
                ],
              )),
        ),
      ));
}
