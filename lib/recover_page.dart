/**
 * Author: Shahbaj Jamil
 *profile: https://github.com/shahbajjamil
  */

import 'package:flutter/material.dart';

class RecoverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.limeAccent,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Recover'),
      ),
      body: Center(
        child: Column(
          children: [
  widget(
    children:     <Widget>[
    
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
    
                                fontSize: 25, fontWeight: FontWeight.bold,color: Colors.orange),
    
                          ),
    
                          TextSpan(
    
                            text: 'and ',
    
                            style: TextStyle(
    
                                fontSize: 20, fontWeight: FontWeight.bold),
    
                          ),
    
                          TextSpan(
    
                            text: 'password',
    
                            style: TextStyle(
    
                                fontSize: 25, fontWeight: FontWeight.bold,color: Colors.orange),
    
                          ),
    
                        ],
    
                      ),
    
                    ),
    
                  ),
    
                ),
    
                Container(child: TextField()),
    
              ],
  ),
],
        ),
      ),
    );
  }
}
