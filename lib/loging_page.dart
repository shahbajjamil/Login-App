/**
 * Author: Shahbaj Jamil
 *profile: https://github.com/shahbajjamil
  */

import 'package:flutter/material.dart';
import 'package:loging_page/landing_page.dart';
import 'package:loging_page/recover_page.dart';
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

      body: Center(
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              // SizedBox(height: 50,),
              Container(
                height: 100,
                // color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'USER',
                      style: TextStyle(fontSize: 40, color: Colors.orange),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'LOGIN',
                      style: TextStyle(fontSize: 40),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 200,
                child: Image.network(
                    'https://www.pngjoy.com/pngm/377/6992063_chef-silhouette-empty-profile-picture-female-transparent-png.png'),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                child: Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                      // fillColor: Colors.red,

                      // hintText: "User Id",
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
                padding:
                    const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
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
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/RecoverPage');
                      },
                    ),
                    Icon(
                      Icons.live_help,
                      size: 28,
                    ),
                    FingerPrintAuth(),
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

                      Navigator.of(context).pushNamed('/LandingPage');
                    }
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20),
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
