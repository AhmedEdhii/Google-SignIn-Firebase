import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../google_sign_in_provider.dart';

class LoggedInUserWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return Container(
        // alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.width / 2.25),
            Text(
              'User Profile',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(user.photoURL!),
            ),
            SizedBox(height: 20),
            Text(
              user.displayName!,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 4),
            Text(
              user.email!,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              child: Text('Logout', style: TextStyle(color: Colors.black),),
              onPressed: () {
                final provider =
                Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.logout();
              },
            )
          ],
        ),
    );
  }
}