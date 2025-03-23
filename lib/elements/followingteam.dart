import 'package:flutter/material.dart';
import 'package:frc_scouting_app/utils/colors.dart';

class FollowingTeam extends StatelessWidget {
  final String teamName;
  final int teamNumber;
  final Color teamColor;
  final String winLossRatio;
  final double opr;

  FollowingTeam({
    required this.teamName,
    required this.teamNumber,
    required this.teamColor,
    required this.winLossRatio,
    required this.opr,
  });

static List <FollowingTeam> getFollowingTeams () {

    List<FollowingTeam> teams = []; // initialize team arrayList
    
/* IN THE FUTURE use a for loop to get the teams that the user is following
rather than manually adding. manually adding so i can get a proof of concept 

once we do that, need to remember to make the getTeams() method take the parameters*/

    teams.add(
      FollowingTeam(
        teamName: "Sim-City",
        teamNumber: 3464, 
        teamColor: Colors.teal,
        winLossRatio: 0.5.toString(),
        opr: 80.2,
      ),
    );

    teams.add(
      FollowingTeam(
        teamName: "Orbit",
        teamNumber: 1690,
        teamColor: Colors.blue,
        winLossRatio: 1.toString(),
        opr: 12.0,
      ),
    );

    teams.add(
      FollowingTeam(
        teamName: "Bionic Beef", 
        teamNumber: 97, 
        teamColor: Colors.green,
        winLossRatio: 0.3.toString(),
        opr: 1000000.0,
      ),
    );


  return teams;
  }


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: 200,
      decoration: BoxDecoration(
        color: tileColor,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: teamColor, width: 2),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: screenWidth * 0.05,
          top: screenHeight * 0.01,
          right: screenWidth * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                "$teamName | $teamNumber",
                style: TextStyle(
                  color: whiteColor,
                  fontFamily: 'SF-Pro',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              "W/L: $winLossRatio",
              style: TextStyle(
                color: whiteColor.withOpacity(0.7),
              ),
            ),
            Text(
              "OPR: $opr",
              style: TextStyle(
                color: whiteColor.withOpacity(0.7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}