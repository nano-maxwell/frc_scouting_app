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
          SizedBox(height: screenHeight * 0.1),
          Container(
              margin: EdgeInsets.only(left: screenWidth * 0.1),
              height: 150,
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
                      border: Border.all(color: teams[index].teamColor, width: 2),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0),
                      
                      child: Text(
                        teams[index].teamName,
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          
                        ),
                      ), // text
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
