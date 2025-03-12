import 'package:flutter/material.dart';
import 'package:frc_scouting_app/elements/followingteam.dart';

class UserPage extends StatelessWidget {
   UserPage({super.key});


List<FollowingTeam> teams = [];

  void getTeams() {
    teams = FollowingTeam.getTeams();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}