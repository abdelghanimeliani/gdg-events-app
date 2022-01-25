// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gdg_envents_app/screens/login/login_page.dart';

import '../../colors.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Container(
              margin: const EdgeInsets.all(20.0),
              child: Column(
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
                      'JOIN THE TEAM',
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
                      'Create Account',
                      style: TextStyle(
                        color: darkblue,
                        fontFamily: 'Poppins-bold',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
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
                                    'Create with Google',
                                    style: TextStyle(
                                        fontSize: 11.6,
                                        fontFamily: 'Poppins-light',
                                        color: iconsColor),
                                  ),
                                )
                              ],
                            ),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(12.0),
                            ),
                            onPressed: () {},
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
                                    'Create with Apple',
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
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  //space
                  SizedBox(height: 15),
                  //Centers text
                  Align(
                    alignment: Alignment.center,
                    child: Text('Or Create Using Email',
                        style: TextStyle(
                          color: iconsColor,
                          fontSize: 12,
                          fontFamily: 'Poppins-light',
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  //space
                  SizedBox(height: 15),
                  //Input Feilds
                  SizedBox(
                    height: 500,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 2),
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(12.0),
                              ),
                            ),

                            suffixIcon: Icon(Icons.person),
                            // Image.asset('assets/images/gdg.png'),
                            hintText: 'Enter you User name',
                            hintStyle: new TextStyle(
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),

                        SizedBox(height: 10),
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
                              'Register',
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
                              child: Text('Already a Team Member?',
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
                                        builder: (context) => LoginPage()),
                                  );
                                },
                                child: Text(
                                  'LOG IN',
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
              ),
            ),
          ),
        ),
      );
}
