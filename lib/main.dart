import 'package:flutter/material.dart';
import 'package:flutter_app2/ui/profile_page/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: "Roboto",
          textTheme: TextTheme(
            headline3: TextStyle(
              fontSize: 48,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
            ),
            headline4: TextStyle(
              fontSize: 34,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
            ),
            headline5: TextStyle(
              fontSize: 24,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
            ),
            headline6: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.15,
               ),
            subtitle1: TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
            ),
            subtitle2: TextStyle(
              fontSize: 14,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
            ),
            button: TextStyle(
              fontSize: 14,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.5,
            ),
            bodyText1: TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
              letterSpacing: 0.444444,
            ),
            bodyText2: TextStyle(
              fontSize: 14,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
              letterSpacing: 0.25,
            ),
            caption: TextStyle(
              fontSize: 12,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
              letterSpacing: 0.5,
            ),
            overline: TextStyle(
              fontSize: 10,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.5,
            ),
          ),
        ),
        home: ProfilePage());
  }
}
