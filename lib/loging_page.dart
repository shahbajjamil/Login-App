/**
 * Author: Shahbaj Jamil
 *profile: https://github.com/shahbajjamil
  */

import 'package:flutter/material.dart';
import 'finger_print.dart';

class LogingPage extends StatefulWidget {
  @override
  _LogingPageState createState() => _LogingPageState();
}

class _LogingPageState extends State<LogingPage> {
  final _formKey = GlobalKey<FormState>();
  final _user = 'student';
  final _password = '12345';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amberAccent,
      resizeToAvoidBottomInset: false,

      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: ExactAssetImage('assets/bg/backg.jpg'),
              ),
            ),
          ),
          Center(
            child: Form(
              key: _formKey,
              child: ListView(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    height: 100,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'USER ',
                            style:
                                TextStyle(fontSize: 40, color: Colors.orange),
                          ),
                          TextSpan(
                            text: 'LOGIN',
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 130),
                    height: 100,
                    // width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orange,
                    ),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQbAfM1cGXywOuap2AYi3mPRwuLx1pBOxoMHZjRsa-GorQwOyDu',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, left: 20.0, right: 20.0),
                    child: Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "User Name",
                          icon: Icon(Icons.supervised_user_circle),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'user name is empty';
                          } else if (value != _user) {
                            return 'Incorrect User Id';
                          }
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, left: 20.0, right: 20.0),
                    child: Container(
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          // hintText: "User Id",
                          labelText: "Password",
                          icon: Icon(Icons.lock_outline),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Password is empty';
                          } else if (value != _password) {
                            return 'Incorrect Password';
                          }
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 45.0),
                    child: Row(
                      children: <Widget>[
                        FlatButton(
                          child: Text(
                            'Forgotten',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/RecoverPage');
                          },
                        ),
                        Icon(
                          Icons.live_help,
                          size: 28,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 80.0, vertical: 10.0),
                    child: RaisedButton(
                      elevation: 10,
                      color: Colors.orange,
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          print("Login Successful");

                          Navigator.of(context).pushNamed('/MyProfile');
                        }
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  FingerPrintAuth(),
                  Text(
                    'Tap for Fingerprint Verification',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
