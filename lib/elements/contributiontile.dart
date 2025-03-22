import 'package:flutter/material.dart';
import 'package:frc_scouting_app/utils/colors.dart';

class ContributionTile extends StatelessWidget {
  // scouting data
  //final bool teamColor; // true = blue, false = red
  final String teamColor;
  final int teamNumber;
  final int matchNum;
  // TELEOP
 final int coralL4;
 final int coralL3;
 final int coralL2;
 final int coralL1;
 final int algaeProcessor;
 final int algaeNet;
 final int algaeL3;
 final int algaeL2;

// AUTO
final int autoCoralL4;
 final int autoCoralL3;
final int autoCoralL2;
final int autoCoralL1;
final int autoAlgaeProcessor;
final int autoAlgaeNet;
final int autoAlgaeL3;
final int autoAlgaeL2;
final bool crossedLine;

// ENDGAME
final String endgameAction;

ContributionTile({
  // MISC
required this.teamNumber,
required this.matchNum,
required this.teamColor,

// TELEOP
required this.coralL4,
required this.coralL3,
required this.coralL2,
required this.coralL1,
required this.algaeProcessor,
required this.algaeNet,
required this.algaeL2,
required this.algaeL3,

// AUTO
required this.autoCoralL4,
required this.autoCoralL3,
required this.autoCoralL2,
required this.autoCoralL1,
required this.autoAlgaeProcessor,
required this.autoAlgaeNet,
required this.autoAlgaeL3,
required this.autoAlgaeL2,
required this.crossedLine,

//ENDGAME
required this.endgameAction,
});


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        width: screenWidth * 0.7,
        decoration: BoxDecoration(
          color: tileColor,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: white50Percent, width: 2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
              'Match: $matchNum',
              style: TextStyle(
                  color: whiteColor,
                  fontFamily: 'SF-Pro',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
              ),
            ),
            ),
            Text(
              'Team: $teamNumber',
              style: TextStyle(
                color: whiteColor.withOpacity(0.7),
              ),
            ),
            Text(
              'Color: $teamColor',
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