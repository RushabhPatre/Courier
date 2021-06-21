import 'dart:convert';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:courier_provider/Earning.dart';
import 'package:courier_provider/Login.dart';
import 'package:courier_provider/screens/settings_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:courier_provider/Weight%20Reconcillation.dart';

import 'Create_Return_Shipment.dart';
import 'Dashboardtab.dart';
import 'Create_New_shipment.dart';
import 'profile.dart';
import 'notification.dart';
import 'Bankbutton.dart';
import 'Feedback.dart';
import 'Personalinfo.dart';
import 'kyc.dart';
import 'screens/settings_screen.dart';
import 'Earning.dart';
//import 'scan.dart';

// const SERVER_IP = 'http://165.227.99.192:5000/api';

class HomePage extends StatefulWidget {
  // HomePage(str, payload);

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
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _folded = true;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          backgroundColor: const Color(0xF3E2DFDF),
          drawer: Container(
            width: 250,
            child: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/images/as.png',
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Text(
                          "Aryan",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.account_box_outlined,
                      color: Colors.orange,
                    ),
                    title: Text('Personal Information'),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Personalinfo()));
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.account_box_outlined,
                      color: Colors.orange,
                    ),
                    title: Text('KYC Verification'),
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => KYC()));
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.account_balance_wallet_outlined,
                      color: Colors.orange,
                    ),
                    title: Text('Bank account details'),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Bankbutton()));
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.local_shipping_outlined,
                      color: Colors.orange,
                    ),
                    title: Text('Pickup details'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Colors.orange,
                    ),
                    title: Text('Setting'),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SettingsScreen()));
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.feedback_outlined,
                      color: Colors.orange,
                    ),
                    title: Text('Feedback'),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Feedbacked()));
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.insert_comment,
                      color: Colors.orange,
                    ),
                    title: Text('FAQ'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Colors.orange,
                    ),
                    title: Text('Logout'),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                  ),
                ],
              ),
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.black38,
            title: Text(
              'Logistics',
              style:
                  TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
            ),
            actions: [
              // Icon(Icons.send_to_mobile),
              Padding(
                padding: EdgeInsets.only(top: 10.0, right: 5.0),
                child: IconButton(
                  icon: Icon(Icons.select_all_outlined),
                  onPressed: () => {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomePage()))
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 7.0, left: 0.0, right: 15.0),
                child: IconButton(
                  icon: Icon(Icons.notifications),
                  onPressed: () => {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Notifiy()))
                  },
                ),
              ),
            ],
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
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Dashboardtab())),
                              },
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            padding:
                                const EdgeInsets.only(top: 20.0, bottom: 20),
                            child: Row(
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Icon(
                                      Icons.dashboard,
                                      color: Colors.orange,
                                    )),
                                Container(
                                    margin: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      "Dashboard",
                                      style: TextStyle(fontSize: 17.0),
                                    )),
                                Container(
                                  margin: const EdgeInsets.only(left: 130),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    // child: Icon(
                                    //   Icons.arrow_forward_ios,
                                    //   color: Colors.black,
                                    // )
                                  ),
                                ),
                              ],
                            ),
                          ),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0))),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 5),
                      child: RaisedButton(
                          color: Colors.white,
                          onPressed: () => {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Earning())),
                              },
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            padding:
                                const EdgeInsets.only(top: 20.0, bottom: 20),
                            child: Row(
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Icon(
                                      Icons.calculate,
                                      color: Colors.orange,
                                    )),
                                Container(
                                    margin: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      "Cost Calculator",
                                      style: TextStyle(fontSize: 17.0),
                                    )),
                                Container(
                                  margin: const EdgeInsets.only(left: 55),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    // child: Icon(
                                    //   Icons.arrow_forward_ios,
                                    //   color: Colors.black,
                                    // )
                                  ),
                                ),
                              ],
                            ),
                          ),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0))),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 5),
                      child: RaisedButton(
                          color: Colors.white,
                          onPressed: () => {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Earning())),
                              },
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            padding:
                                const EdgeInsets.only(top: 20.0, bottom: 20),
                            child: Row(
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Icon(
                                      Icons.account_balance_wallet_rounded,
                                      color: Colors.orange,
                                    )),
                                Container(
                                    margin: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      "Earning",
                                      style: TextStyle(fontSize: 17.0),
                                    )),
                                Container(
                                  margin: const EdgeInsets.only(left: 55),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    // child: Icon(
                                    //   Icons.arrow_forward_ios,
                                    //   color: Colors.black,
                                    // )
                                  ),
                                ),
                              ],
                            ),
                          ),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0))),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // bottomNavigationBar: BottomNavyBar(
          //   selectedIndex: currentIndex,
          //   onItemSelected: (index) {
          //     setState(() {
          //       currentIndex = index;
          //     });
          //   },
          //   items: <BottomNavyBarItem>[
          //     BottomNavyBarItem(
          //       icon: Icon(Icons.home),
          //       title: Text('Home'),
          //     ),
          //     BottomNavyBarItem(
          //       icon: Icon(Icons.circle_notifications),
          //       title: Text('Notification'),
          //     ),
          //     BottomNavyBarItem(
          //       icon: Icon(Icons.message),
          //       title: Text('Chat'),
          //     ),
          //     BottomNavyBarItem(
          //       icon: Icon(Icons.person),
          //       title: Text('Profile'),
          //       activeColor: Colors.blueAccent,
          //       // inactiveColor: Colors.lightGreenAccent,
          //     ),
          //   ],
          // ),
          bottomNavigationBar: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // Padding(padding: EdgeInsets.all(20.0)),
                IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.message),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Profile()),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Profile()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      );
}
