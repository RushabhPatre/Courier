import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class Create_Return_Shipment extends StatefulWidget {
  @override
  _Create_Return_ShipmentState createState() => _Create_Return_ShipmentState();
}

class _Create_Return_ShipmentState extends State<Create_Return_Shipment> {
  FocusNode myFocusNode = new FocusNode();
  String _chosenValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Creare Return Shipment"), backgroundColor: Colors.black38,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            margin: const EdgeInsets.only(left: 5.0, right: 5.0,top: 5.0,bottom: 5.0),
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
                      margin: const EdgeInsets.only(left: 15.0, right: 15.0,top: 5.0,bottom: 5.0),
                      padding: EdgeInsets.all(5.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: [
                              Icon(Icons.local_shipping),
                              Text('   Pickup POC Details',style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),),
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
                                labelText: "First Name",
                                labelStyle: TextStyle(
                                 //   color: myFocusNode.hasFocus ? Colors.orange : Colors.orangeAccent,
                                    fontSize: 13
                                )
                            ),
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
                                labelText: "Last Name",
                                labelStyle: TextStyle(
                                  //   color: myFocusNode.hasFocus ? Colors.orange : Colors.orangeAccent,
                                    fontSize: 13
                                )
                            ),
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
                                labelText: "Contact Number",
                                labelStyle: TextStyle(
                                  //   color: myFocusNode.hasFocus ? Colors.orange : Colors.orangeAccent,
                                    fontSize: 13
                                )
                            ),
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
                                labelText: "Email",
                                labelStyle: TextStyle(
                                  //   color: myFocusNode.hasFocus ? Colors.orange : Colors.orangeAccent,
                                    fontSize: 13
                                )
                            ),
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
                                labelText: "Address Line 1",
                                labelStyle: TextStyle(
                                  //   color: myFocusNode.hasFocus ? Colors.orange : Colors.orangeAccent,
                                    fontSize: 13
                                )
                            ),
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
                                labelText: "Address Line 2",
                                labelStyle: TextStyle(
                                  //   color: myFocusNode.hasFocus ? Colors.orange : Colors.orangeAccent,
                                    fontSize: 13
                                )
                            ),
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
                                labelText: "Pickup Pincode",
                                labelStyle: TextStyle(
                                  //   color: myFocusNode.hasFocus ? Colors.orange : Colors.orangeAccent,
                                    fontSize: 13
                                )
                            ),
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
                                labelText: "State",
                                labelStyle: TextStyle(
                                  //   color: myFocusNode.hasFocus ? Colors.orange : Colors.orangeAccent,
                                    fontSize: 13
                                )
                            ),
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
                                labelText: "Company Name",
                                labelStyle: TextStyle(
                                  //   color: myFocusNode.hasFocus ? Colors.orange : Colors.orangeAccent,
                                    fontSize: 13
                                )
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
                  margin: const EdgeInsets.only(left: 5.0, right: 5.0,top: 10.0,bottom: 5.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 5.0,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10.0,bottom: 10.0,left: 10.0),
                          child: Row(
                            children: [
                              Icon(Icons.assignment),
                              Text("   Delivery Address Details",style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),)
                            ],
                          ),
                        ),
                       Container(
                         margin: const EdgeInsets.only(right: 10),
                         child: Align(
                           alignment:Alignment.centerRight,
                             child:Text("+Add Address",style: TextStyle(
                               color: Colors.orange
                             ),)),
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
                      ),
                      onChanged: (String value) {
                        setState(() {
                          _chosenValue = value;
                        });
                      },),),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}