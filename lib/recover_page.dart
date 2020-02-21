/**
 * Author: Shahbaj Jamil
 *profile: https://github.com/shahbajjamil
  */

import 'package:flutter/material.dart';

class RecoverPage extends StatefulWidget {
  @override
  _RecoverPageState createState() => _RecoverPageState();
}

class _RecoverPageState extends State<RecoverPage> {
  final _formKey = GlobalKey<FormState>();
  final _user = 'student';
  final _password = '12345';
  String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.limeAccent,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Recover'),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  // color: Colors.orange,
                  // width: double.infinity,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Forgot your ',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'User name ',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange),
                        ),
                        TextSpan(
                          text: 'and ',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'password',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  // decoration: BoxDecoration(border: ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      // hintText: "User Id",
                      labelText: "Your Name",
                      icon: Icon(Icons.lock_outline),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Enter Your Name';
                      } else{name=value;}
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: RaisedButton.icon(
                  color: Theme.of(context).accentColor,
                  elevation: 10.0,
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      print("Submit");

                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: new Text('Hi, $name'),
                            content: new Text(
                                'User Name: $_user \n\nPassword: $_password'),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text('Close'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  icon: Icon(Icons.vpn_key),
                  label: Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
