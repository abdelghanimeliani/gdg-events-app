import 'package:flutter/material.dart';

import 'package:gdg_envents_app/screens/event-details-page/event_details_page.dart';
import 'package:gdg_envents_app/screens/main%20page/main_page.dart';



void main() {
  // SystemChrome.setEnabledSystemUIMode([SystemUiOverlay.bottom]);
  runApp(MaterialApp(
    // theme: ThemeData(
    //   fontFamily: 'GoogleSans',
    // ),
    theme: ThemeData(
        outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(primary: Colors.black),
    )),
    home: LoginPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  "Welcome this is GDG",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}

