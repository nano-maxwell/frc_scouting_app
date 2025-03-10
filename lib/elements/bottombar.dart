// ignore_for_file: unused_element, unused_field

import 'package:flutter/material.dart';

const Color _bottomBarBackgroundColor = Color(0xff191919);
const Color _notSelected = Color(0xFF666666);

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(width: 1, color: Color(0xFF333333)))),
      child: BottomAppBar(
        height: 90,
        color: _bottomBarBackgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () { 
                _onItemTapped(0); 
              },
              icon: Image.asset(
                'assets/images/teambottombar.png', 
                height: 32, 
                color: _selectedIndex == 0 ? Colors.white : _notSelected
              ),
            ),
            IconButton(
              onPressed: () { 
                _onItemTapped(1); 
              },
              icon: Image.asset(
                'assets/images/clipboardbottombar.png', 
                height: 32,
                color: _selectedIndex == 1 ? Colors.white : _notSelected
              ),
            ),
            IconButton(
              onPressed: () { 
                _onItemTapped(2); 
              },
              icon: Image.asset(
                'assets/images/statsbottombar.png', 
                height: 32, 
                color: _selectedIndex == 2 ? Colors.white : _notSelected
              ),
            ),
            IconButton(
              onPressed: () {
                _onItemTapped(3);
              },
              icon: Image.asset(
                'assets/images/userbottombar.png', 
                height: 32, 
                color: _selectedIndex == 3 ? Colors.white : _notSelected
              ),
            ),
          ],
        ),
      ),
    );
  }
}