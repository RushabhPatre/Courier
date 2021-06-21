import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(cod());
}

class cod extends StatefulWidget {
  @override
  _codState createState() => _codState();
}

class _codState extends State<cod> {
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
                title: Text("Cash Shipment Value"),
                subtitle: Text(
                  "0",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.money,
                  color: Colors.orange,
                  size: 40,
                ),
              )),
          Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white70, width: 5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: Text("Feight charges from COD"),
                subtitle: Text(
                  "0",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.monetization_on_outlined,
                  color: Colors.orange,
                  size: 40,
                ),
              )),
          Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white70, width: 5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: Text("Remittance amount"),
                subtitle: Text(
                  "0",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.money_rounded,
                  color: Colors.orange,
                  size: 40,
                ),
              )),
        ],
      ),
    );
  }
}