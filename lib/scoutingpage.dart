import 'package:flutter/material.dart';

class ScoutingPage extends StatelessWidget {
  const ScoutingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1114),
      body: Center(
        child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Match Scouting",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                ),
              ),
              const Text(
                "Total Contributions: 63",
                style: TextStyle(
                  color: Color(0x80FFFFFF),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 90),
              const Text(
                "New Form",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
              Container(
                height: 94,
                width: 94,
                margin: const EdgeInsets.only(top: 20),
                decoration: const BoxDecoration(
                  color: Color(0xFF8652FF),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(color: Color(0x4D8652FF), blurRadius: 32, spreadRadius: 10)
                  ]
                ),
                child: Image.asset('assets/images/clipboard.png', height: 10, width: 100, color: Colors.white)
              ),
              
            ]
          )
      )
    );
  }
}
