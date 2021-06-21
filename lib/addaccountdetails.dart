import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class Accountdetails extends StatefulWidget {
  @override
  _Accountdetails createState() => _Accountdetails();
}

class _Accountdetails extends State<Accountdetails> {
  FocusNode myFocusNode = new FocusNode();
  String _chosenValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bank Details",
          style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black38,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          margin: const EdgeInsets.only(
              left: 5.0, right: 5.0, top: 5.0, bottom: 5.0),
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.all(1),
            children: <Widget>[
              Center(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 5.0,
                  child: Container(
                    margin: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 5.0, bottom: 5.0),
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: [
                            Icon(Icons.credit_card),
                            Text(
                              '   Credit/Debit Card',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextField(
                          //    controller: _fullnameController,
                          //   focusNode: myFocusNode,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(0.0),
                              isDense: true,
                              //   contentPadding: EdgeInsets.only(left: 10),
                              labelText: "Card Number",
                              labelStyle: TextStyle(
                                  //   color: myFocusNode.hasFocus ? Colors.orange : Colors.orangeAccent,
                                  fontSize: 15)),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextField(
                          //    controller: _fullnameController,
                          // focusNode: myFocusNode,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(0.0),
                              isDense: true,
                              //   contentPadding: EdgeInsets.only(left: 10),
                              labelText: "Name on Crad",
                              labelStyle: TextStyle(
                                  //   color: myFocusNode.hasFocus ? Colors.orange : Colors.orangeAccent,
                                  fontSize: 13)),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Flexible(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: new TextField(
                                    decoration: InputDecoration(
                                        labelText: "Exp Date",
                                        labelStyle: TextStyle(fontSize: 13),
                                        contentPadding: EdgeInsets.all(10))),
                              ),
                            ),
                            new Flexible(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: new TextField(
                                    decoration: InputDecoration(
                                        labelText: "CVV",
                                        labelStyle: TextStyle(fontSize: 13),
                                        contentPadding: EdgeInsets.all(10))),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
