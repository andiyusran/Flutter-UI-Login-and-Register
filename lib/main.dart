import 'package:flutter/material.dart';
import 'package:ui_login_register/constants.dart';
import 'package:ui_login_register/screens/auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Bottom Navbar',
      theme: ThemeData(
        backgroundColor: Colors.white,
        appBarTheme: AppBarTheme(color: primaryColor, elevation: 2),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Auth(),
    );
  }
}
