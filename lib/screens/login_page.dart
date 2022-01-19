import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
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
                          TextStyle(color: Colors.grey[600], fontSize: 60),
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
                        color: Color(0xFF0F2D52),
                        fontFamily: 'sans-serif',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text('hi'),
                        ),
                        Container(
                          child: Text('fds'),
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ),
      );
}
