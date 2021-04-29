import 'package:contest/screens/home_screen.dart';
import 'package:flutter/material.dart';

class ContestBottomNavigation extends StatefulWidget {
  @override
  _ContestBottomNavigationState createState() =>
      _ContestBottomNavigationState();
}

class _ContestBottomNavigationState extends State<ContestBottomNavigation> {
  int currentIndex = 0;
  static List<Widget> _widgetOptions = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  _itemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.error_outline), label: 'Emergencies'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: currentIndex,
        onTap: _itemTapped,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
