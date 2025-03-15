import 'package:flutter/material.dart';

class FollowingTeam {
  String teamName;
  int teamNumber;
  Color teamColor; // USE FRC COLORS WEBSITE API
  String winLossRatio; // use a toString()


  FollowingTeam({
    required this.teamName,
    required this.teamNumber,
    required this.teamColor,
    required this.winLossRatio,
  });

  static List <FollowingTeam> getTeams () {

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
      ),
    );

    teams.add(
      FollowingTeam(
        teamName: "Orbit",
        teamNumber: 1690,
        teamColor: Colors.blue,
        winLossRatio: 1.toString()
      ),
    );

    teams.add(
      FollowingTeam(
        teamName: "Bionic Beef", 
        teamNumber: 97, 
        teamColor: Colors.green,
        winLossRatio: 0.3.toString()
      ),
    );


  return teams;
  }

}