import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey,
            blurRadius: 20.0,
          ),
        ],
      ),
      child: BottomNavigationBar(
        showSelectedLabels: false,
        unselectedFontSize: 15.0,
        selectedFontSize: 15.0,
        iconSize: 50.0,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("icons/Lessons.png"),
              color: Color(0xFF2D1E55),
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("icons/Events.png"),
              color: Color(0xFFF9437C),
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("icons/Profile.png"),
              color: Color(0xFF2D1E55),
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("icons/Events.png"),
              color: Color(0xFFF9437C),
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("icons/Lessons.png"),
              color: Color(0xFF2D1E55),
            ),
            title: Text(''),
          ),
        ],
      ),
    );
  }
}
