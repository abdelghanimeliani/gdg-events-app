import 'package:flutter/material.dart';
import 'package:gdg_envents_app/screens/login/login_page.dart';
// import 'package:flutter/services.dart';
// import 'package:gdg_envents_app/screens/main%20page/main_page.dart';
// import 'package:google_fonts/google_fonts.dart';

//this is abdelghani code
// void main() {
//   runApp(const MaterialApp(home:MainPage() ,));
// }

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
