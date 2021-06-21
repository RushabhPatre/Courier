import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:courier_provider/Dashboard_tab_items/OverView.dart';
import 'package:courier_provider/Dashboard_tab_items/Pickup.dart';
import 'package:courier_provider/Dashboard_tab_items/cod.dart';
import 'package:courier_provider/SplashScreen.dart';

class Dashboardtab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orders",
            textAlign: TextAlign.center,
            style:
                TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.black38,
      ),
      body: DefaultTabController(
          length: 3, // length of tabs
          initialIndex: 0,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  child: TabBar(
                    labelColor: Colors.green,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(text: 'New'),
                      Tab(text: 'Active'),
                      Tab(text: 'History'),
                    ],
                  ),
                ),
                Container(
                    height: 400, //height of TabBarView
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Colors.grey, width: 0.5))),
                    child: TabBarView(children: <Widget>[
                      Container(
                        child: Center(child: OverView()),
                      ),
                      Container(
                        child: Center(
                          child: Text('Display Tab 2',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text('Display Tab 3',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ]))
              ])),
    );
  }
}
