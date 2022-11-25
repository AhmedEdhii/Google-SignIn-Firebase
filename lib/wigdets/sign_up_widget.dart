import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_signin_firebase/google_sign_in_provider.dart';
import 'package:provider/provider.dart';


class SignUpWidget extends StatelessWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(236, 240, 244, 1),
              onPrimary: Colors.black,
              minimumSize: Size(double.infinity, 50),
            ),
            icon: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: FaIcon(FontAwesomeIcons.google, color: Colors.red),
            ),
            label: Text('Sign Up with Google', style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(46, 62, 92, 1),
            ) ),
            onPressed: () {
              final provider =
              Provider.of<GoogleSignInProvider>(context, listen: false);
              provider.googleLogin();
            },
          ),
        ],
      ),
    );
  }
}