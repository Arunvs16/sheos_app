import 'package:shoes_app/pages/auth/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/pages/auth/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  //initially show the login screen

  bool showLoginPage = true;

  //toggle between login and register page

  void togglepage() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: togglepage);
    } else {
      return RegisterPage(onTap: togglepage);
    }
  }
}
