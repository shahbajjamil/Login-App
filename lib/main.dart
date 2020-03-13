/**
 * Author: Shahbaj Jamil
 *profile: https://github.com/shahbajjamil
  */

import 'package:flutter/material.dart';
import 'package:loging_page/loging_page.dart';
import 'package:loging_page/myProfile.dart';
import 'package:loging_page/recover_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        accentColor: Colors.blue,
      ),
      home: LogingPage(),
      routes: <String, WidgetBuilder>{
        '/LogingPage' : (BuildContext context) => LogingPage(),
        '/MyProfile' : (BuildContext context) => MyProfile(),
        '/RecoverPage' : (BuildContext context) => RecoverPage(),
        
      },
    );
  }
}

