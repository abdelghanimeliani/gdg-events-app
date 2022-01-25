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

