import 'dart:convert';
import 'dart:io';
import 'package:courier_provider/HomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:courier_provider/Login.dart';

const SERVER_IP = 'https://logistic.virtueinfotek.uk/api/auth';

void main() => runApp(Signup());

class Signup extends StatefulWidget {
  Signup({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String phoneNo;
  String smsOTP;
  String verificationId;
  String errorMessage = '';
  FirebaseAuth _auth = FirebaseAuth.instance;
  String _phone;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> verifyPhone() async {
    final PhoneCodeSent smsOTPSent = (String verId, [int forceCodeResend]) {
      this.verificationId = verId;
      smsOTPDialog(context).then((value) {
        print('sign in');
      });
    };
    try {
      await _auth.verifyPhoneNumber(
          phoneNumber: this.phoneNo, // PHONE NUMBER TO SEND OTP
          codeAutoRetrievalTimeout: (String verId) {
            //Starts the phone number verification process for the given phone number.
            //Either sends an SMS with a 6 digit code to the phone number specified, or sign's the user in and [verificationCompleted] is called.
            this.verificationId = verId;
          },
          codeSent:
              smsOTPSent, // WHEN CODE SENT THEN WE OPEN DIALOG TO ENTER OTP.
          timeout: const Duration(seconds: 20),
          verificationCompleted: (AuthCredential phoneAuthCredential) {
            print(phoneAuthCredential);
          },
          verificationFailed: (AuthException exceptio) {
            print('${exceptio.message}');
          });
    } catch (e) {
      handleError(e);
    }
  }

  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _companynameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rolesController = TextEditingController();

  void displayDialog(context, title, text) => showDialog(
        context: context,
        builder: (context) =>
            AlertDialog(title: Text(title), content: Text(text)),
      );

  Future<HttpClientResponse> attemptSignUp(
      String fullname,
      String username,
      String mobile,
      String email,
      String companyname,
      String password,
      String roles,
      context) async {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fullname'] = fullname;
    data['username'] = username;
    data['mobile'] = mobile;
    data['email'] = email;
    data['companyname'] = companyname;
    data['password'] = password;
    data['roles'] = [roles];

    HttpClient httpClient = new HttpClient();
    HttpClientRequest request =
        await httpClient.postUrl(Uri.parse("$SERVER_IP/signup"));
    request.headers.set('content-type', 'application/json');
    request.add(utf8.encode(json.encode(data)));
    HttpClientResponse response = await request.close();
    String reply = await response.transform(utf8.decoder).join();
    httpClient.close();

    var jsonObject = json.decode(reply);
    String Messagae = jsonObject['message'];
    var res = response.statusCode;

    if (res == 200)
      displayDialog(context, "Success", Messagae);
    else if (res == 400)
      displayDialog(context, "Error", Messagae);
    else {
      displayDialog(context, "Error", "An unknown error occurred.");
    }

    return response;
  }

  Future<bool> smsOTPDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return new AlertDialog(
            title: Text('Enter SMS Code'),
            content: Container(
              height: 85,
              child: Column(children: [
                TextField(
                  onChanged: (value) {
                    this.smsOTP = value;
                  },
                ),
                (errorMessage != ''
                    ? Text(
                        errorMessage,
                        style: TextStyle(color: Colors.red),
                      )
                    : Container())
              ]),
            ),
            contentPadding: EdgeInsets.all(10),
            actions: <Widget>[
              FlatButton(
                child: Text('Done'),
                onPressed: () {
                  _auth.currentUser().then((user) {
                    if (user != null) {
                      Navigator.of(context).pop();
                      // Navigator.of(context).pushReplacementNamed('/homepage');
                      //  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyHome()));
                    } else {
                      signIn();
                    }
                  });
                },
              )
            ],
          );
        });
  }

  signIn() async {
    try {
      final AuthCredential credential = PhoneAuthProvider.getCredential(
        verificationId: verificationId,
        smsCode: smsOTP,
      );
      final FirebaseUser user =
          (await _auth.signInWithCredential(credential)) as FirebaseUser;
      final FirebaseUser currentUser = await _auth.currentUser();
      assert(user.uid == currentUser.uid);
      Navigator.of(context).pop();
      // Navigator.of(context).pushReplacementNamed('/homepage');
    } catch (e) {
      handleError(e);
    }
  }

  handleError(PlatformException error) {
    print(error);
    switch (error.code) {
      case 'ERROR_INVALID_VERIFICATION_CODE':
        FocusScope.of(context).requestFocus(new FocusNode());
        setState(() {
          errorMessage = 'Invalid Code';
        });
        Navigator.of(context).pop();
        smsOTPDialog(context).then((value) {
          print('sign in');
        });
        break;
      default:
        setState(() {
          errorMessage = error.message;
        });

        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    FocusNode myFocusNode = new FocusNode();
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
                        left: 20.0, right: 20.0, top: 5.0, bottom: 20.0),
                    padding: EdgeInsets.all(5.0),
                    child: Form(
                      key: _formKey,
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
                            controller: _fullnameController,
                            focusNode: myFocusNode,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(0.0),
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.orange,
                                ),
                                labelText: "Full Name",
                                labelStyle: TextStyle(
                                    color: myFocusNode.hasFocus
                                        ? Colors.orange
                                        : Colors.orangeAccent,
                                    fontSize: 14)),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          TextField(
                            controller: _usernameController,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(0.0),
                                prefixIcon: Icon(
                                  Icons.person_pin_outlined,
                                  color: Colors.orange,
                                ),
                                labelText: "userid",
                                labelStyle: TextStyle(
                                    color: myFocusNode.hasFocus
                                        ? Colors.orange
                                        : Colors.orangeAccent,
                                    fontSize: 14)),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          TextFormField(
                            controller: _mobileController..text = '+91',
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.all(0.0),
                              prefixIcon: Icon(
                                Icons.person_pin_outlined,
                                color: Colors.orange,
                              ),
                              //   prefixText: ("+91"),
                              labelText: "Mobile",
                              labelStyle: TextStyle(
                                  color: myFocusNode.hasFocus
                                      ? Colors.orange
                                      : Colors.orangeAccent,
                                  fontSize: 14),
                              suffixIcon: ButtonTheme(
                                height: 10,
                                minWidth: 15,
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(20.0)),
                                  child: Text('Verify'),
                                  textColor: Colors.white,
                                  //   elevation: 4,
                                  color: Colors.orange,
                                  onPressed: () {
                                    verifyPhone();
                                    if (!_formKey.currentState.validate()) {
                                      return;
                                    }
                                    _formKey.currentState.save();
                                    print(_phone);
                                    ;
                                  },
                                ),
                              ),
                            ),
                            onChanged: (value) {
                              this.phoneNo = value;
                            },
                            /*   validator: (String value) {
                              if(value.isEmpty){
                                return 'Phone number is required';
                              }
                            },*/
                            onSaved: (String value) {
                              _phone = value;
                            },
                          ),
                          (errorMessage != ''
                              ? Text(
                                  errorMessage,
                                  style: TextStyle(color: Colors.red),
                                )
                              : Container()),
                          SizedBox(
                            height: 10.0,
                          ),
                          TextField(
                            controller: _emailController,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(0.0),
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Colors.orange,
                                ),
                                labelText: "Email",
                                labelStyle: TextStyle(
                                    color: myFocusNode.hasFocus
                                        ? Colors.orange
                                        : Colors.orangeAccent,
                                    fontSize: 14)),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          TextField(
                            controller: _companynameController,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(0.0),
                                prefixIcon: Icon(
                                  Icons.home_repair_service_outlined,
                                  color: Colors.orange,
                                ),
                                labelText: "Company Name",
                                labelStyle: TextStyle(
                                    color: myFocusNode.hasFocus
                                        ? Colors.orange
                                        : Colors.orangeAccent,
                                    fontSize: 14)),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          TextField(
                            controller: _passwordController,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(0.0),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.orange,
                                ),
                                labelText: "Password",
                                labelStyle: TextStyle(
                                    color: myFocusNode.hasFocus
                                        ? Colors.orange
                                        : Colors.orangeAccent,
                                    fontSize: 14)),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          TextField(
                            controller: _rolesController..text = 'user',
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(0.0),
                                prefixIcon: Icon(
                                  Icons.home_repair_service_outlined,
                                  color: Colors.orange,
                                ),
                                labelText: "Roles",
                                labelStyle: TextStyle(
                                    color: myFocusNode.hasFocus
                                        ? Colors.orange
                                        : Colors.orangeAccent,
                                    fontSize: 14)),
                          ),
                          SizedBox(
                            height: 10.0,
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
              ),
              SizedBox(
                height: 25.0,
              ),
              Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  child: RaisedButton(
                    padding: EdgeInsets.all(15.0),
                    onPressed: () async {
                      var fullname = _fullnameController.text;
                      var username = _usernameController.text;
                      var mobile = _mobileController.text;
                      var email = _emailController.text;
                      var companyname = _companynameController.text;
                      var password = _passwordController.text;
                      var roles = _rolesController.text;
                      if (username.length < 4)
                        displayDialog(context, "Invalid Username",
                            "The username should be at least 4 characters long");
                      else if (password.length < 4)
                        displayDialog(context, "Invalid Password",
                            "The password should be at least 4 characters long");
                      else {
                        var response = await attemptSignUp(
                            fullname,
                            username,
                            mobile,
                            email,
                            companyname,
                            password,
                            roles,
                            context);
                      }
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          32.0,
                        ),
                        side: BorderSide(color: Colors.orange)),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 15.0, color: Colors.orange),
                    ),
                  )),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 40),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Already have an account ?",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    new GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomePage()));
                      },
                      child: new Text(
                        "  Login",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    )
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
