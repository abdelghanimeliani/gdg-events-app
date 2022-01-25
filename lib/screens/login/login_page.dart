// ignore_for_file: prefer_const_constructors, deprecated_member_use, unnecessary_new, prefer_const_literals_to_create_immutables

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:gdg_envents_app/colors.dart';
import 'package:gdg_envents_app/screens/register/register_page.dart';

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
                        fontFamily: 'Poppins-light',
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
                        fontFamily: 'Poppins-bold',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  //space
                  SizedBox(height: 12),
                  //buttons
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
                                  ),
                                )
                              ],
                            ),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(12.0),
                            ),
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

                  //space
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
                    height: 300,
                    child: Column(
                      children: <Widget>[
                        // email Input
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 2),
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(12.0),
                              ),
                            ),

                            suffixIcon: Icon(Icons.email),
                            // Image.asset('assets/images/gdg.png'),
                            hintText: 'Enter you Email',
                            hintStyle: new TextStyle(
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          style: new TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 13,
                          ),
                          decoration: InputDecoration(
                            suffixIconColor: blue,
                            suffixIcon: Icon(Icons.remove_red_eye_rounded),
                            hintText: 'Enter your Password',
                            hintStyle: new TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontStyle: FontStyle.italic,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          obscureText: true,
                        ),
                        SizedBox(height: 12),
                        SizedBox(
                          height: 55,
                          width: 200,
                          child: RawMaterialButton(
                            fillColor: blue,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(12.0),
                            ),
                            onPressed: () {},
                            // style: ,
                            child: Text(
                              'Continue',
                              style: TextStyle(
                                color: white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                // fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.center,
                              child: Text('Don\'t have an Account?',
                                  style: TextStyle(
                                    color: iconsColor,
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                            Align(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const RegisterPage()),
                                  );
                                },
                                child: Text(
                                  'REGISTER',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ),
      ));
}
