import 'package:flutter/material.dart';
import 'package:frc_scouting_app/utils/colors.dart';

class ScoutingPage extends StatelessWidget {
  const ScoutingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_Color,
      
      // Centers all objedcts
      body: Center(

        // Positions 
        child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // "Match Scouting"
              const Text(
                "Match Scouting",
                style: TextStyle(
                  color: whiteColor,
                  fontFamily: 'SF-Pro',
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                ),
              ),

              // Contribution count
              const Text(
                "Total Contributions: 63",
                style: TextStyle(
                  color: white50Percent,
                  fontFamily: 'SF-Pro',
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              // Add space after contribution count
              const SizedBox(height: 90),

              // "New Form"
              const Text(
                "New Form",
                style: TextStyle(
                  color: whiteColor,
                  fontFamily: 'SF-Pro',
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                ),
              ),
              
              // The clipboard button in the center. 
              GestureDetector(
                onTap: (){
                  
                },
                // Circle
                child: Container(
                  padding: const EdgeInsets.all(25),
                  margin: const EdgeInsets.fromLTRB(0,20,0,35),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: primaryColor,
                    boxShadow: [
                      BoxShadow(color: shadowColor, blurRadius: 20, spreadRadius: 5),
                    ]
                  ),
                  // Actual clipboard
                  child: Image.asset(
                    'assets/images/clipboard.png',
                    color: whiteColor,
                    height: 55,
                  ),
                ),
              ),

              // "View Previous Contributions"
              // Will convert this into a (probably) GestureDetector later
              const Text(
                "View Previous\nContributions",
                style: TextStyle(
                  color: white50Percent,
                  fontFamily: 'SF-Pro',
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
            ]
          )
      ),
    );
  }
}
