import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Create_New_Shipment extends StatefulWidget {
  @override
  _Create_New_ShipmentState createState() => _Create_New_ShipmentState();
}

class _Create_New_ShipmentState extends State<Create_New_Shipment> {
  String _chosenValue;
  bool agree = false;

  void _doSomething() {}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Shipment"),
        backgroundColor: Colors.black38,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                  left: 5.0, right: 5.0, top: 10.0, bottom: 5.0),
              padding: const EdgeInsets.all(5),
              child: Center(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 5.0,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10, top: 10),
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "+Add Address",
                              style: TextStyle(color: Colors.orange),
                            )),
                      ),
                      Container(
                        padding: const EdgeInsets.all(0.0),
                        child: DropdownButton<String>(
                          value: _chosenValue,
                          //elevation: 5,
                          style: TextStyle(color: Colors.black),
                          items: <String>[
                            'Primary',
                            'Secondary',
                            'Tirtiary',
                            'MIDC',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          hint: Text(
                            "Select Pickup Address",
                            textAlign: TextAlign.left,
                          ),
                          onChanged: (String value) {
                            setState(() {
                              _chosenValue = value;
                            });
                          },
                        ),
                      ),
                      Column(children: [
                        Container(
                          padding: EdgeInsets.all(5.0),
                          margin: const EdgeInsets.only(
                              left: 5, right: 5, top: 10, bottom: 10),
                          child: Row(
                            children: [
                              Material(
                                child: Checkbox(
                                  value: agree,
                                  onChanged: (value) {
                                    setState(() {
                                      agree = value;
                                    });
                                  },
                                ),
                              ),
                              Text(
                                'Check this box if you want to ship local\norders within 50kms',
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        ),
                      ]),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: TextField(
                          //    controller: _fullnameController,
                          //  focusNode: myFocusNode,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(0),
                              isDense: true,
                              //   contentPadding: EdgeInsets.only(left: 10),
                              labelText: " Delivery Pincode",
                              labelStyle: TextStyle(
                                  //   color: myFocusNode.hasFocus ? Colors.orange : Colors.orangeAccent,
                                  fontSize: 13)),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: TextField(
                          //    controller: _fullnameController,
                          //  focusNode: myFocusNode,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(0),
                              isDense: true,
                              //   contentPadding: EdgeInsets.only(left: 10),
                              labelText: " Weight (in kg)",
                              labelStyle: TextStyle(
                                  //   color: myFocusNode.hasFocus ? Colors.orange : Colors.orangeAccent,
                                  fontSize: 13)),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: TextField(
                          //    controller: _fullnameController,
                          //  focusNode: myFocusNode,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(0),
                              isDense: true,
                              //   contentPadding: EdgeInsets.only(left: 10),
                              labelText: "Dimension",
                              labelStyle: TextStyle(
                                  //   color: myFocusNode.hasFocus ? Colors.orange : Colors.orangeAccent,
                                  fontSize: 13)),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
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
                          Icon(Icons.all_inbox_outlined),
                          Text(
                            '   Product Details',
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
                            labelText: "Add Product name",
                            labelStyle: TextStyle(
                                //   color: myFocusNode.hasFocus ? Colors.orange : Colors.orangeAccent,
                                fontSize: 13)),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextField(
                        //    controller: _fullnameController,
                        // focusNode: myFocusNode,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(0.0),
                            isDense: true,
                            //   contentPadding: EdgeInsets.only(left: 10),
                            labelText: "SKU",
                            labelStyle: TextStyle(
                                //   color: myFocusNode.hasFocus ? Colors.orange : Colors.orangeAccent,
                                fontSize: 13)),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextField(
                        //    controller: _fullnameController,
                        //  focusNode: myFocusNode,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(0.0),
                            isDense: true,
                            //   contentPadding: EdgeInsets.only(left: 10),
                            labelText: "Product Category",
                            labelStyle: TextStyle(
                                //   color: myFocusNode.hasFocus ? Colors.orange : Colors.orangeAccent,
                                fontSize: 13)),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10, top: 10),
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "+Add more details",
                              style: TextStyle(color: Colors.orange),
                            )),
                      ),
                      TextField(
                        //    controller: _fullnameController,
                        //  focusNode: myFocusNode,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(0.0),
                            isDense: true,
                            //   contentPadding: EdgeInsets.only(left: 10),
                            labelText: "Unit Price",
                            labelStyle: TextStyle(
                                //   color: myFocusNode.hasFocus ? Colors.orange : Colors.orangeAccent,
                                fontSize: 13)),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextField(
                        //    controller: _fullnameController,
                        // focusNode: myFocusNode,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(0.0),
                            isDense: true,
                            //   contentPadding: EdgeInsets.only(left: 10),
                            labelText: "Product Category",
                            labelStyle: TextStyle(
                                //   color: myFocusNode.hasFocus ? Colors.orange : Colors.orangeAccent,
                                fontSize: 13)),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
