import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:courier_provider/Root.dart';
import 'package:splashscreen/splashscreen.dart';

import 'Login.dart';

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 4,
      navigateAfterSeconds: new Root(),
      backgroundColor: Colors.orange,
      title: new Text(
        'Logistics',
        textScaleFactor: 2,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      image: new Image.asset('assets/images/splashlogo.png'),
      loadingText: Text(
        "Loading",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      photoSize: 150.0,
      loaderColor: Colors.white,
    );
  }
}
