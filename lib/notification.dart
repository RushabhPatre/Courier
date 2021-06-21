import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notifiy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification alert"),
        backgroundColor: Colors.black38,
      ),
      body: DefaultTabController(
        length: 5,
        child: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}
