import 'package:flutter/material.dart';

class Feedbacked extends StatefulWidget {
  @override
  _Feedbacked createState() => _Feedbacked();
}

class _Feedbacked extends State<Feedbacked> {
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: Text(
          'Feedback',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 8.0),
            Text(
              "Please select the type of the feedback",
              style: TextStyle(color: Color(0xffc5c5c5)),
            ),
            // SizedBox(height: 5.0),
            // buildCheckItem("Login trouble"),
            // buildCheckItem("Phone number verification"),
            // buildCheckItem("Personal Profile"),
            // buildCheckItem("Other issue"),
            // buildCheckItem("Suggestions"),
            Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  },
                ),
                // SizedBox(width: 5.0),
                Text("Login Trouble"),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 2,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  },
                ),
                // SizedBox(width: 2.0),
                Text("Phone number verification"),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 3,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  },
                ),
                // SizedBox(width: 2.0),
                Text("Personal Profile"),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 4,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  },
                ),
                // SizedBox(width: 5.0),
                Text("Other issues"),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 5,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  },
                ),
                // SizedBox(width: 2.0),
                Text("Suggestions"),
              ],
            ),
            SizedBox(height: 5.0),
            buildFeedbackForm(),
            SizedBox(height: 10.0),
            buildNumberField(),
            Spacer(),
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {},
                    color: Color(0xffc5c5c5),
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
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

  buildNumberField() {
    return TextField(
      style: TextStyle(
        color: Colors.black,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0.0),
        prefixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(width: 1.0, color: Color(0xffc5c5c5)),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(width: 10.0),
                  Text(
                    "+91",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xffc5c5c5),
                    ),
                  ),
                  Icon(Icons.arrow_drop_down, color: Colors.cyan),
                  SizedBox(width: 10.0),
                ],
              ),
            ),
            SizedBox(width: 10.0),
          ],
        ),
        hintStyle: TextStyle(
          fontSize: 14.0,
          color: Color(0xffc5c5c5),
        ),
        hintText: "Phone Number",
        border: OutlineInputBorder(),
      ),
    );
  }

  buildFeedbackForm() {
    return Container(
      height: 150.0,
      child: Stack(
        children: <Widget>[
          TextField(
            maxLines: 10,
            decoration: InputDecoration(
                hintText: "Please briefly describe the issue",
                hintStyle: TextStyle(
                  fontSize: 10.0,
                  color: Color(0xffc5c5c5),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffc5c5c5)),
                )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 1.0,
                    color: Color(0xffa6a6a6),
                  ),
                ),
              ),
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffe5e5e5),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.add,
                        color: Color(0xffa5a5a5),
                      ),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    "Upload screenshot (optional)",
                    style: TextStyle(
                      color: Color(0xffc5c5c5),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  buildCheckItem(title) {
    return Padding(
      padding: EdgeInsets.only(),
      child: Row(
        children: <Widget>[
          Icon(Icons.radio_button_unchecked, color: Colors.black),
          SizedBox(width: 5.0),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
