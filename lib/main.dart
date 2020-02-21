/**
 * Author: Shahbaj Jamil
 *profile: https://github.com/shahbajjamil
  */

import 'package:flutter/material.dart';
import 'package:loging_page/landing_page.dart';
import 'package:loging_page/loging_page.dart';
import 'package:loging_page/recover_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Color(0xff2ecc72),
      ),
      home: LogingPage(),
      routes: <String, WidgetBuilder>{
        '/LogingPage' : (BuildContext context) => LogingPage(),
        '/LandingPage' : (BuildContext context) => LandingPage(),
        '/RecoverPage' : (BuildContext context) => RecoverPage(),
        
      },
    );
  }
}

