// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:frc_scouting_app/elements/followingteam.dart';
import 'package:frc_scouting_app/utils/colors.dart';

class UserPage extends StatelessWidget {
  UserPage({super.key});

  List<FollowingTeam> teams = FollowingTeam.getTeams();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: bg_Color,
// START OF FOLLOWING
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: screenHeight * 0.07),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.07), // CREATES TITLE "FOLLOWING TEAMS"
                child: Text(
                  "Following Teams",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: whiteColor,
                  ),
                ),
              ),
SizedBox(width: screenWidth * 0.14),
              Text(
                "See All",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white70,
                ),
              ),
              // SizedBox(width: 5),
              // Baseline(
              //   baseline: 16,
              //   baselineType: TextBaseline.alphabetic,
              //   child: Icon(
              //     Icons.arrow_forward_ios,
              //     color: white50Percent,
              //     size: 14,
              //   ),
              // ),
            ],
          ),
          
          Container(
              margin: EdgeInsets.symmetric(vertical: screenWidth * 0.05),
              height: 120,
              color: bg_Color,
              child: ListView.separated( // creates a listview
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
                itemCount: teams.length,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(width: 20),
                itemBuilder: (context, index) { // builds the teams that are created in followingteam.dart
                  return FollowingTeam(
                  teamName: teams[index].teamName, 
                  teamNumber: teams[index].teamNumber, 
                  teamColor: teams[index].teamColor, 
                  winLossRatio: teams[index].winLossRatio, 
                  opr: teams[index].opr,
                  );
                },
              ))
        ]),
// START OF CONTRIBUTION LOG
        Padding(
          padding: EdgeInsets.only(left: screenWidth * 0.07),
          child: Row(
             crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Contribution Log",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: whiteColor,
                ),
              ),

              SizedBox(width: screenWidth * 0.14),
              Text(
                "See All", // align this with above "see all" somehow pls
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ),
        
      ]), 
      
    ); 

    
  }
}
