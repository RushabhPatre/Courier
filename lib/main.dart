import 'package:flutter/material.dart';
import 'package:courier_provider/Login.dart';
import 'package:splashscreen/splashscreen.dart';
import 'SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: SplashScreenPage(),
      // routes: <String, WidgetBuilder>{
      //   '/enterOTP': (BuildContext ctx) => EnterOTP(),
      // },
      debugShowCheckedModeBanner: false,
    );
  }
}
