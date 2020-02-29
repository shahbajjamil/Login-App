import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class FingerPrintAuth extends StatefulWidget {
  @override
  _FingerPrintAuthState createState() => _FingerPrintAuthState();
}

class _FingerPrintAuthState extends State<FingerPrintAuth> {
  final LocalAuthentication _localAuthentication = LocalAuthentication();
  String _authorizedOrNot = "Not Authorized";

  Future<void> _authorizeNow() async {
    bool isAuthorized = false;
    try {
      isAuthorized = await _localAuthentication.authenticateWithBiometrics(
        localizedReason: "Verification pending",
        useErrorDialogs: true,
        stickyAuth: true,
      );
    } on PlatformException catch (e) {
      print(e);
    }

    if (!mounted) return;

    setState(() {
      if (isAuthorized) {
        _authorizedOrNot = "Authorized";
        Navigator.of(context).pushNamed('/LandingPage');
        // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyPage()));
      } else {
        _authorizedOrNot = "Not Authorized";
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return IconButton(
              icon: Icon(
                Icons.fingerprint,
                // size:30,
                color: Colors.cyan,
              ),
              onPressed: _authorizeNow,
    );
  }
}