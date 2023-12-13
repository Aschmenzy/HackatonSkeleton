import 'package:hackaton_skeleton/util/my_text_field.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final String hintText = "Name";
    final controller = TextEditingController();

    return Scaffold(
      body: MyTextField(
          controller: controller, hintText: hintText, obscureText: false),
    );
  }
}
