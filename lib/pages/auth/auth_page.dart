import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/pages/home_page.dart';
import 'package:shoes_app/pages/auth/login_or_register.dart';

class AuthPage extends StatelessWidget {
 const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // user is loColor.fromARGB(255, 19, 19, 20)
          if (snapshot.hasData) {
            return const HomePage();
          }
          // user is not loggged in
          else {
            return const LoginOrRegister();
          }
        },
      ),
    );
  }
}
