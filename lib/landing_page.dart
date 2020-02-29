/**
 * Author: Shahbaj Jamil
 *profile: https://github.com/shahbajjamil
  */

import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQbAfM1cGXywOuap2AYi3mPRwuLx1pBOxoMHZjRsa-GorQwOyDu'),
          ),
          Text('Loging\nSuccessFul',style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,),
        ],),
      ),
    );
  }
}
