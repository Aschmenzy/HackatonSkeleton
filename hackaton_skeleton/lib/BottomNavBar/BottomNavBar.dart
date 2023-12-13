import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hackaton_skeleton/pages/HomePage.dart';

class NavBar extends StatefulWidget {
   const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {

  //defautlt index
  int index = 0;

    final screens = [
      Home() 
    ];

    final items = <Widget>[
      Icon(Icons.home),
      Icon(Icons.settings),
      Icon(Icons.favorite),
    ]; 

    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        color: Colors.blue,
        animationDuration: Duration(milliseconds: 500),
        items: items,
        index: index,
        onTap: (index) {
          setState(() {
            index = index;
          });
        },
        )
        ,
    );
  }
}
