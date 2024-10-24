import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obsecureText;
  const CustomTextField({super.key, this.controller, required this.hintText, required this.obsecureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obsecureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 123, 123, 123)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: const Color.fromARGB(255, 69, 69, 69)),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: const Color.fromARGB(255, 69, 69, 69)),
        ),
      ),
    );
  }
}
