import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Pickup());
}

class Pickup extends StatefulWidget {
  @override
  _PickupState createState() => _PickupState();
}

class _PickupState extends State<Pickup> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[300],
      child: ListView(
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          Card(
            // color: Colors.orange,
              child: ListTile(
                title: Text("Pickup Within 24 hours"),
                subtitle: Text(
                  "0",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.airport_shuttle_rounded,
                  color: Colors.orange,
                  size: 60,
                ),
              )),
          Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white70, width: 5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: Text("Pickup within 24-48 hours"),
                subtitle: Text(
                  "0",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.airport_shuttle_rounded,
                  color: Colors.orange,
                  size: 60,
                ),
              )),
          Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white70, width: 5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: Text("Pickup greater than 48 hours"),
                subtitle: Text(
                  "0",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.airport_shuttle_rounded,
                  color: Colors.orange,
                  size: 60,
                ),
              )),
        ],
      ),
    );
  }
}