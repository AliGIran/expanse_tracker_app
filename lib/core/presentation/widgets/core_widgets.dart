import 'package:flutter/material.dart';

//todo: pages and routs must be connected to navigation ba items

class MainBottomNavigationBar extends StatefulWidget {
  const MainBottomNavigationBar({super.key});

  @override
  State<MainBottomNavigationBar> createState() =>
      _MainBottomNavigationBarState();
}

class _MainBottomNavigationBarState extends State<MainBottomNavigationBar> {
  int _selectedBottomItem = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.deepPurple,
      currentIndex: _selectedBottomItem,
      onTap: (value) {
        setState(() {
          _selectedBottomItem = value;
        });
      },
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.man), label: "Profile"),
        BottomNavigationBarItem(icon: Icon(Icons.pie_chart), label: "Budget"),
        BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Transaction"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      ],
    );
  }
}
