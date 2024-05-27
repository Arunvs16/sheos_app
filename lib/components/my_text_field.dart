import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintext;
  final bool obscuretext;
  final FocusNode? focusNode;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintext,
    required this.obscuretext,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscuretext,
      decoration: InputDecoration(
        hintText: hintext,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade200,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade900,
          ),
        ),
        fillColor: Colors.grey.shade300,
        filled: true,
        hintStyle: const TextStyle(
          color: Color.fromARGB(255, 82, 82, 82),
        ),
      ),
    );
  }
}
