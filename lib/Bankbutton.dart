import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'HomePage.dart';
import 'addaccountdetails.dart';

class Bankbutton extends StatefulWidget {
  @override
  _Bankbutton createState() => _Bankbutton();
}

class _Bankbutton extends State<Bankbutton> {
  FocusNode myFocusNode = new FocusNode();
  String _chosenValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bank Account Details",
          style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black38,
      ),
      body: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(
              left: 10.0, right: 5.0, top: 5.0, bottom: 5.0),
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.all(1),
            children: <Widget>[
              SizedBox(height: 8.0),
              Text(
                "You should verify the deposit with your bank.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xffc5c5c5)),
              ),
              Container(
                padding: const EdgeInsets.only(top: 20),
                child: RaisedButton(
                    color: Colors.white,
                    onPressed: () => {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Accountdetails())),
                        },
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                      child: Row(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Icon(
                                Icons.account_balance,
                                color: Colors.orange,
                              )),
                          Container(
                              margin: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                "Add bank account",
                                style: TextStyle(fontSize: 17.0),
                              )),
                        ],
                      ),
                    ),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
