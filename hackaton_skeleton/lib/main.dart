// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hackaton_skeleton/BottomNavBar/BottomNavBar.dart';
import 'package:hackaton_skeleton/Theme/theme_provider.dart';
import 'package:provider/provider.dart';


void main() async {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
