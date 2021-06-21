import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class View_Shipment extends StatefulWidget {
  @override
  _View_Shipment_State createState() => _View_Shipment_State();
}

class _View_Shipment_State extends State<View_Shipment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("View Shipment"),backgroundColor: Colors.black38,),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.book),
              iconSize: 100,
              color: Colors.orange,
              onPressed: () {
              },
            ),
            Text('No Orders available')
          ],
        ),
      ),
    );
  }
}
