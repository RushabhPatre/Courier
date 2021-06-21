import 'dart:convert' show json, base64, ascii;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'HomePage.dart';
import 'Signup.dart';

const SERVER_IP = 'https://logistic.virtueinfotek.uk/api/auth';
final storage = FlutterSecureStorage();

void main() => runApp(Login());

class Login extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _rolesController = TextEditingController();

  void displayDialog(context, title, text) => showDialog(
        context: context,
        builder: (context) =>
            AlertDialog(title: Text(title), content: Text(text)),
      );

  Future<String> attemptLogIn(
      String username, String email, String password, String roles) async {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = username;
    data['password'] = password;

    // data['username'] = "rohit123";
    // data['password'] = "rohit123";

    var res = await http.post("$SERVER_IP/signin",
        body: json.encode(data), headers: {"content-type": "application/json"});

    print(res.body.toString());

    if (res.statusCode == 200) {
      return res.body;
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    FocusNode myFocusNode = new FocusNode();
    debugShowCheckedModeBanner:
    false;
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          margin: const EdgeInsets.only(
              left: 20.0, right: 20.0, top: 50.0, bottom: 50.0),
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.all(5),
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(bottom: 20.0),
                child: Center(
                  child: Text(
                    'Logistics',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Center(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 5.0,
                  child: Container(
                    margin: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 5.0, bottom: 10.0),
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      children: <Widget>[
                        GoogleSignInButton(onPressed: () {}, darkMode: true),
                        SizedBox(height: 1),
                        Row(children: <Widget>[
                          Expanded(
                            child: new Container(
                                margin: const EdgeInsets.only(
                                    left: 10.0, right: 10.0),
                                child: Divider(
                                  color: Colors.black,
                                  height: 30,
                                )),
                          ),
                          Text("OR"),
                          Expanded(
                            child: new Container(
                                margin: const EdgeInsets.only(
                                    left: 15.0, right: 15.0),
                                child: Divider(
                                  color: Colors.black,
                                  height: 30,
                                )),
                          ),
                        ]),
                        TextField(
                          controller: _usernameController,
                          focusNode: myFocusNode,
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.orange,
                              ),
                              labelText:
                                  "Userid                                                                                                                           ",
                              labelStyle: TextStyle(
                                  color: myFocusNode.hasFocus
                                      ? Colors.orange
                                      : Colors.orangeAccent,
                                  fontSize: 15)),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        TextField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.orange,
                              ),
                              labelText: "Password",
                              labelStyle: TextStyle(
                                  color: myFocusNode.hasFocus
                                      ? Colors.orange
                                      : Colors.orangeAccent,
                                  fontSize: 15)),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Material(
                          borderRadius: BorderRadius.circular(30.0),
                          //elevation: 5.0,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20.0, bottom: 20.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                      "Forgot Password ?",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                  ],
                ),
              ),
              Container(
                  child: RaisedButton(
                padding: EdgeInsets.all(15.0),
                onPressed: () async {
                  var username = _usernameController.text;
                  var email = _emailController.text;
                  var password = _passwordController.text;
                  var roles = _rolesController.text;
                  var jwt =
                      await attemptLogIn(username, email, password, roles);
                  if (jwt != null) {
                    storage.write(key: "jwt", value: jwt);
                    Navigator.push(
                        context,
                        //    MaterialPageRoute(builder: (context) => HomePage()
                        MaterialPageRoute(builder: (context) => HomePage()));
                    //MaterialPageRoute(
                    //builder: (context) => HomePage.fromBase64(jwt)));
                  } else {
                    displayDialog(context, "An Error Occurred",
                        "No account was found matching that username and password");
                  }
                },
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      32.0,
                    ),
                    side: BorderSide(color: Colors.orange)),
                child: Text(
                  "Sign In",
                  style: TextStyle(fontSize: 15.0, color: Colors.orange),
                ),
              )),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 40),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Dont have an account ?",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Signup()));
                      },
                      child: new Text(
                        "  Signup",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
