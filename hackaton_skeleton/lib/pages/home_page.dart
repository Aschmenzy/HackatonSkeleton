import 'package:hackaton_skeleton/util/my_button.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyButton(
        borderRadius: 16,
        buttonText: 'Login',
        ontap: () {
          Navigator.pushNamed(context, '/login');
        },
        height: 50,
        color: Colors.grey,
      ),
    );
  }
}
