import 'package:flutter/material.dart';
import 'package:frc_scouting_app/screens/scorespage.dart';
import 'package:frc_scouting_app/screens/scoutingpage.dart';


// initializes common colors 
const Color _bottomBarBackgroundColor = Color(0xff191919);
const Color _notSelected = Color(0xFF666666);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;

    void _onItemTapped(int index) { // method that will swtich between pgaes using bottom nav bar, referring to each page as an index
      setState(() {
        _selectedIndex = index;
      });
    }

  final List<Widget> _pages = [ // lists all pages as an array
    Center(child: Text('Page for Index 0 (Coming Soon)', style: TextStyle(color: Colors.black))),
    ScoutingPage(),
    ScoresPage(),
    Center(child: Text('User Page (Coming Soon)', style: TextStyle(color: Colors.black))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // this is with the onItemTapped method, what actually dictates each page number to index

      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(width: 1, color: Color(0xFF333333)))),
        child: BottomAppBar(
          height: 90,
          color: _bottomBarBackgroundColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // youll never guess waht this does
            children: [
              IconButton( // all icon button interactions
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
      ),
    );
  }
}