import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KYC extends StatefulWidget {
  @override
  _KYC createState() => _KYC();
}

class _KYC extends State<KYC> {
  bool _folded = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xF3E2DFDF),
      appBar: AppBar(
        title: Text(
          "KYC Verification",
          style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black38,
      ),
      body: Center(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  width: 300,
                  padding: EdgeInsets.only(top: 20),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.orange,
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Padding(
                            padding: EdgeInsets.fromLTRB(15, 17, 10, 15),
                            child: Icon(Icons.album, size: 70),
                          ),
                          title: Padding(
                            padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                            child: Text(
                                'KYC Verification will be Mandatory for shipping any order',
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 13)),
                          ),
                          /*     subtitle: Text('TWICE', style: TextStyle(color: Colors.white)),*/
                        ),
                        ButtonTheme(
                          child: ButtonBar(
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(right: 25),
                                // ignore: deprecated_member_use
                                child: RaisedButton(
                                  padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                                  child: const Text('Complete KYC',
                                      style: TextStyle(
                                          color: Colors.orange, fontSize: 12)),
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        20.0,
                                      ),
                                      side: BorderSide(color: Colors.orange)),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
