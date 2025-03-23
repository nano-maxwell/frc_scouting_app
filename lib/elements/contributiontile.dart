import 'package:flutter/material.dart';
import 'package:frc_scouting_app/utils/colors.dart';

class ContributionTile extends StatelessWidget {
  // scouting data
  //final bool allianceColor; // true = blue, false = red
  final String allianceColor;
  final int teamNumber;
  final int matchNum;
//   // TELEOP
//  final int coralL4;
//  final int coralL3;
//  final int coralL2;
//  final int coralL1;
//  final int algaeProcessor;
//  final int algaeNet;
//  final int algaeL3;
//  final int algaeL2;

// // AUTO
// final int autoCoralL4;
// final int autoCoralL3;
// final int autoCoralL2;
// final int autoCoralL1;
// final int autoAlgaeProcessor;
// final int autoAlgaeNet;
// final int autoAlgaeL3;
// final int autoAlgaeL2;
// final bool crossedLine;

// // ENDGAME
// final String endgameAction;

  ContributionTile({
    // MISC
    required this.teamNumber,
    required this.matchNum,
    required this.allianceColor,

// TELEOP
// required this.coralL4,
// required this.coralL3,
// required this.coralL2,
// required this.coralL1,
// required this.algaeProcessor,
// required this.algaeNet,
// required this.algaeL2,
// required this.algaeL3,

// // AUTO
// required this.autoCoralL4,
// required this.autoCoralL3,
// required this.autoCoralL2,
// required this.autoCoralL1,
// required this.autoAlgaeProcessor,
// required this.autoAlgaeNet,
// required this.autoAlgaeL3,
// required this.autoAlgaeL2,
// required this.crossedLine,

// //ENDGAME
// required this.endgameAction,
  });

  static List<ContributionTile> getContributionTile() {
    List<ContributionTile> contributions = [];

    contributions.add(
      ContributionTile(teamNumber: 5000, matchNum: 12, allianceColor: 'Red'),
    );

    contributions.add(
      ContributionTile(teamNumber: 1235, matchNum: 42, allianceColor: 'Blue'),
    );

    contributions.add(
      ContributionTile(teamNumber: 7562, matchNum: 76, allianceColor: 'Red'),
    );

    return contributions;
  }

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        width: screenWidth * 0.7,
        decoration: BoxDecoration(
          color: tileColor,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
              color: determineAllianceColor(allianceColor), width: 2),
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                mainAxisAlignment: MainAxisAlignment.start,
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
                  SizedBox(width: 60), // maybe use flexible widget?
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'Time: ${now.hour}:${now.minute}:${now.second}',
                      style: TextStyle(
                        color: white50Percent,
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  )
                ],
              ),
              Text(
                'Team: $teamNumber',
                style: TextStyle(
                  color: whiteColor.withOpacity(0.7),
                ),
              ),
              Text(
                'Color: $allianceColor',
                style: TextStyle(
                  color: whiteColor.withOpacity(0.7),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color determineAllianceColor(allianceColor) {
    if (allianceColor == 'Red') {
      return Colors.red;
    } else {
      return Colors.blue;
    }
  }
}
