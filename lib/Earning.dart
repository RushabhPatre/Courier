import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Earning extends StatefulWidget {
  @override
  _Earning createState() => _Earning();
}

class _Earning extends State<Earning> {
  FocusNode myFocusNode = new FocusNode();
  String _chosenValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Earning",
          style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black38,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 32),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Row(
            children: <Widget>[
              // Container(
              //   decoration: BoxDecoration(
              //       color: Colors.grey[100],
              //       borderRadius: BorderRadius.all(
              //           Radius.circular(18))),
              //   child: Icon(
              //     Icons.date_range,
              //     color: Colors.lightBlue[900],
              //   ),
              //   padding: EdgeInsets.all(12),
              // ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Payment",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey[900]),
                    ),
                    Text(
                      "Payment from Saad",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey[500]),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "+\$500.5",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.lightGreen),
                  ),
                  Text(
                    "26 Jan",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[500]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
