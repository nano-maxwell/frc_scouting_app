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

      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: screenHeight * 0.07),
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.07),
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
          // Divider( WOULD HAVE ADDED A LINE
          //   color: white50Percent,
          //   thickness: 2,
          //   indent: screenWidth * 0.1,
          //   endIndent: screenWidth * 0.3,
          // ),
          Container(
              margin: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.07, vertical: screenWidth * 0.05),
              height: 120,
              color: bg_Color,
              child: ListView.separated(
                itemCount: teams.length,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(width: 20),
                itemBuilder: (context, index) {
                  return Container(
                    width: 200,
                    decoration: BoxDecoration(
                      // color: teams[index].teamColor,
                      color: tileColor,
                      borderRadius: BorderRadius.circular(25),
                      border:
                          Border.all(color: teams[index].teamColor, width: 2),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.05, top: screenHeight * 0.01, right: screenWidth * 0.05),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FittedBox (
                            fit: BoxFit.scaleDown, // if too much text in team name + number then it scales it down
                          child: Text(
                            teams[index].teamName + " | " + teams[index].teamNumber.toString(), // team name + number
                            style: TextStyle(
                              color: whiteColor,
                              fontFamily: 'SF-Pro',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          ),
                         
                          Text(
                            "W/L: " + teams[index].winLossRatio, // adds team win/loss ratio
                            style: TextStyle(
                              color: whiteColor.withOpacity(0.7),
                            ),
                          ),
                          Text(
                            "OPR: " + teams[index].opr.toString(),
                            style: TextStyle(
                              color: whiteColor.withOpacity(0.7),
                            )
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ))
        ])
      ]), // column
      // children
    ); // column

    // scaffold
  }
}
