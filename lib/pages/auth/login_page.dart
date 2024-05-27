import 'package:firebase_auth/firebase_auth.dart';
import 'package:shoes_app/components/my_button.dart';
import 'package:shoes_app/components/my_text_field.dart';
import 'package:shoes_app/pages/auth/forgot_pw_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPAgeState();
}

class _LoginPAgeState extends State<LoginPage> {
  //text controllers

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //sign in

  void signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          content: Text(
            'Invalid!',
            textAlign: TextAlign.center,
          ),
        ),
      );
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const  Color.fromARGB(255, 146, 173, 179),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Logo

                Icon(
                  Icons.message,
                  size: 80,
                  color: Colors.grey.shade900,
                ),

                //welcome back message
                Text(
                  'Welcome Back You\'ve been missed!',
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade900),
                ),

                const SizedBox(height: 25),

                // email textfield

                MyTextField(
                  controller: emailController,
                  hintext: 'Email',
                  obscuretext: false,
                ),

                const SizedBox(height: 10),

                //Password textfield

                MyTextField(
                  controller: passwordController,
                  hintext: 'Password',
                  obscuretext: true,
                ),

                const SizedBox(height: 10),

                //Forgot password

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return const ForgotPasswordPage();
                              }),
                            );
                          },
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                //sign in button

                MyButton(onTap: () => signIn(), text: 'Sing In'),

                const SizedBox(height: 50),

                // not a member?  Register Now!

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(color: Colors.grey.shade900),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        'Register Now!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade900,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
