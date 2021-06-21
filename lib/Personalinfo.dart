import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Dashboardtab.dart';
import 'profile.dart';
import 'notification.dart';
import 'Bankbutton.dart';
import 'Feedback.dart';

//const SERVER_IP = 'http://165.227.99.192:5000/api';
//Class HomePage
class Personalinfo extends StatefulWidget {
  // HomePage(this.jwt, this.payload);

  // factory HomePage.fromBase64(String jwt) =>
  //     HomePage(
  //         jwt,
  //         json.decode(
  //             ascii.decode(
  //                 base64.decode(base64.normalize(jwt.split(".")[1]))
  //             )
  //         )
  //     );

  // final String jwt;
  // final Map<String, dynamic> payload;

  @override
  _Personalinfo createState() => _Personalinfo();
}

class _Personalinfo extends State<Personalinfo> {
  bool _folded = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: Text(
          'Personal Info',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: RaisedButton(
                    color: Colors.white,
                    onPressed: () => {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Profile())),
                    },
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                      child: Row(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Icon(
                                Icons.person_add,
                                color: Colors.orange,
                              )),
                          Container(
                              margin: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                "Profile",
                                style: TextStyle(fontSize: 17.0),
                              )),
                        ],
                      ),
                    ),
                    // shape: new RoundedRectangleBorder(
                    //     borderRadius: new BorderRadius.circular(10.0))
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 5),
                  child: RaisedButton(
                    color: Colors.white,
                    onPressed: () => {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Profile())),
                    },
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                      child: Row(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Icon(
                                Icons.electric_car_sharp,
                                color: Colors.orange,
                              )),
                          Container(
                              margin: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                "Vehicle",
                                style: TextStyle(fontSize: 17.0),
                              )),
                        ],
                      ),
                    ),
                    // shape: new RoundedRectangleBorder(
                    //     borderRadius: new BorderRadius.circular(10.0))
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 5),
                  child: RaisedButton(
                    color: Colors.white,
                    onPressed: () => {},
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                      child: Row(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Icon(
                                Icons.featured_play_list_outlined,
                                color: Colors.orange,
                              )),
                          Container(
                              margin: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                "Driver License",
                                style: TextStyle(fontSize: 17.0),
                              )),
                        ],
                      ),
                    ),
                    // shape: new RoundedRectangleBorder(
                    //     borderRadius: new BorderRadius.circular(10.0))
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
