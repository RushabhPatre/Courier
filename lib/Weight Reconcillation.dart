import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Weight_Reconcillation extends StatefulWidget {
  @override
  _Weight_Reconcillation_State createState() => _Weight_Reconcillation_State();
}

class _Weight_Reconcillation_State extends State<Weight_Reconcillation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Weight Reconcillation"),backgroundColor: Colors.black38,),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.line_weight),
              iconSize: 100,
              color: Colors.orange,
              onPressed: () {
              },
            ),
            Text('No onoing weight discrepancy found')
          ],
        ),
      ),
    );
  }
}
