// ignore_for_file: deprecated_member_use

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pageIndex = 0;
  List<Widget> pages = [
    Container(color: Colors.red),
    Container(color: Colors.blue),
    Container(color: Colors.green),
    Container(color: Colors.orange),
  ];
  List<IconData> navigationIcon = [
     
          CupertinoIcons.home,
          CupertinoIcons.cart,
          CupertinoIcons.heart,
          Icons.person,
     
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: pageIndex, children: pages),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        inactiveColor: Colors.black.withOpacity(.5),
        activeColor:  Color.fromARGB(255, 182, 13, 13),
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 10,
        iconSize: 25,
        rightCornerRadius: 10,
        elevation: 0,
        icons: navigationIcon,
        activeIndex: pageIndex,
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      elevation: 0,
      backgroundColor:  Color.fromARGB(255, 182, 13, 13),
      shape: CircleBorder(),
      
      child: Icon(navigationIcon[pageIndex], size: 20, color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
