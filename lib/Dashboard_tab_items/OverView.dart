import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(OverView());
}

class OverView extends StatefulWidget {
  @override
  _OverViewState createState() => _OverViewState();
}

class _OverViewState extends State<OverView> {
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
            title: Text(
              "ORD1",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Payment accepted",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Icon(
              Icons.local_shipping,
              color: Colors.orange,
              size: 50,
            ),
          )),
          Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white70, width: 5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: Text(
                  "ORD 2",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Payment accepted",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.local_shipping,
                  color: Colors.orange,
                  size: 50,
                ),
              )),
          Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white70, width: 5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: Text(
                  "ORD 3",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Payment accepted",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.local_shipping,
                  color: Colors.orange,
                  size: 50,
                ),
              )),
          Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white70, width: 5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: Text(
                  "ORD 4",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Payment accepted",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.local_shipping,
                  color: Colors.orange,
                  size: 50,
                ),
                //  trailing: Icon(Icons.star)
              )),
          Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white70, width: 5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: Text(
                  "ORD 5",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Payment accepted",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.local_shipping,
                  color: Colors.orange,
                  size: 50,
                ),
              )),
          Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white70, width: 5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: Text(
                  "ORD 6",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Payment accepted",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.local_shipping,
                  color: Colors.orange,
                  size: 50,
                ),
              ))
        ],
      ),
    );
  }
}
