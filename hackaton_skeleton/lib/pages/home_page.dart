// ignore_for_file: prefer_const_constructors

import 'package:hackaton_skeleton/Theme/theme_provider.dart';
import 'package:hackaton_skeleton/util/my_button.dart';
import 'package:flutter/material.dart';
import 'package:hackaton_skeleton/util/settings_item.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    bool isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          MyButton(
            borderRadius: 16,
            buttonText: 'Login',
            ontap: () {
              Navigator.pushNamed(context, '/login');
            },
            height: 50,
            color: Colors.white,
          ),


          

          SettingSwitch(
                    title: 'Dark Mode',
                    icon: Icons.dark_mode,
                    bgColor: Colors.purple.shade100,
                    iconColor: Colors.purple,
                    value: isDarkMode,
                    onTap: (value) {
                      setState(() {
                        isDarkMode = value;
                      });

                      Provider.of<ThemeProvider>(context, listen: false)
                          .toggleTheme();
                    },
                  ),
        ],
      )
        

      
    );
  }
}
