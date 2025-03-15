import 'package:flutter/material.dart';
import 'package:frc_scouting_app/utils/colors.dart';

class MatchTile extends StatelessWidget {
  final String blue1, blue2, blue3, red1, red2, red3, compLevel, eventKey;
  final int blueScore, redScore, matchNum;

  const MatchTile({
    super.key,
    required this.blue1,
    required this.blue2,
    required this.blue3,
    required this.red1,
    required this.red2,
    required this.red3,
    required this.blueScore,
    required this.redScore,
    required this.compLevel,
    required this.matchNum,
    required this.eventKey,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    bool isRedWinner = redScore > blueScore;

    return Container(
      decoration: const BoxDecoration(
        color: tileColor,
        border: Border.symmetric(
          vertical: BorderSide(width: 1, color: primaryColor),
          horizontal: BorderSide(width: 1, color: primaryColor),
        ),
      ),
      padding: EdgeInsets.all(screenHeight * 0.01),
      width: screenWidth * 0.52,
      height: screenHeight * 0.14,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "${compLevel == "qm" ? "Qualifier" : "Playoff"} $matchNum",
                    style: TextStyle(
                      color: whiteColor,
                      fontFamily: 'SF-Pro',
                      fontWeight: FontWeight.w700,
                      fontSize: screenHeight * 0.025,
                    ),
                  ),
                  Text(
                    "Total",
                    style: TextStyle(
                      color: whiteColor,
                      fontFamily: 'SF-Pro',
                      fontWeight: FontWeight.w700,
                      fontSize: screenHeight * 0.02,
                    ),
                  ),
                ],
              ),
          ),
          Container( 
            decoration: BoxDecoration(
              color: isRedWinner ? redOverlay : Colors.transparent,
              borderRadius: BorderRadius.circular(15),
            ),
            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.005, horizontal: screenWidth * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(red1, style: _teamTextStyle(isRedWinner, screenHeight)),
                Text(red2, style: _teamTextStyle(isRedWinner, screenHeight)),
                Text(red3, style: _teamTextStyle(isRedWinner, screenHeight)),
                Text('$redScore', style: _teamTextStyle(isRedWinner, screenHeight)),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: !isRedWinner ? blueOverlay : Colors.transparent,
              borderRadius: BorderRadius.circular(15),
            ),
            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.005, horizontal: screenWidth * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(blue1, style: _teamTextStyle(!isRedWinner, screenHeight)),
                Text(blue2, style: _teamTextStyle(!isRedWinner, screenHeight)),
                Text(blue3, style: _teamTextStyle(!isRedWinner, screenHeight)),
                Text('$blueScore', style: _teamTextStyle(!isRedWinner, screenHeight)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextStyle _teamTextStyle(bool isWinner, double screenHeight) {
    return TextStyle(
      color: isWinner ? whiteColor : white50Percent,
      fontFamily: 'SF-Pro',
      fontWeight: FontWeight.w700,
      fontSize: screenHeight * 0.017,
    );
  }
}
