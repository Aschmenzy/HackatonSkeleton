import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      background: Colors.white,
      primary: Colors.black,
      secondary: Colors.blueAccent.shade400,
    ));

ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
        background: Colors.grey.shade800,
        primary: Colors.white,
        secondary: Colors.lightGreenAccent.shade400));


      
/*
      Add this in the main so dark and light theme work
      
      runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  )) */

  //add provider in pubSpec.yaml


  //add this to every page
  /* 
   ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    bool isDarkMode = themeProvider.isDarkMode;
  */

  //needed button onTap function 

  /*
  onTap: (value) {
                      setState(() {
                        isDarkMode = value;
                      });
  */ 
