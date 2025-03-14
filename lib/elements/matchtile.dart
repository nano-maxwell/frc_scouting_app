import 'package:flutter/material.dart';
import 'package:frc_scouting_app/utils/colors.dart';

class MatchTile extends StatelessWidget {
  // Parameters for teams and score
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
    return Container(
      decoration: const BoxDecoration(
        color: tileColor,
        border: Border.symmetric(vertical: BorderSide(width: 1, color: borderColor), horizontal: BorderSide(width: 1, color: borderColor))
      ),
      padding: const EdgeInsets.all(9),
      width: 210,
      height: 100,
      child: Row(
        children: [
          Container(
            width: 136,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${compLevel == "qm" ? "Qualifier" : "Playoff"} ${matchNum}",
                  style: const TextStyle(
                    color: whiteColor,
                    fontFamily: 'SF-Pro',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      red1,
                      style: TextStyle(
                        color: (redScore > blueScore)
                            ? whiteColor
                            : white50Percent,
                        fontFamily: 'SF-Pro',
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      red2,
                      style: TextStyle(
                        color: (redScore > blueScore)
                            ? whiteColor
                            : white50Percent,
                        fontFamily: 'SF-Pro',
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      red3,
                      style: TextStyle(
                        color: (redScore > blueScore)
                            ? whiteColor
                            : white50Percent,
                        fontFamily: 'SF-Pro',
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      blue1,
                      style: TextStyle(
                        color: (redScore < blueScore)
                            ? whiteColor
                            : white50Percent,
                        fontFamily: 'SF-Pro',
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      blue2,
                      style: TextStyle(
                        color: (redScore < blueScore)
                            ? whiteColor
                            : white50Percent,
                        fontFamily: 'SF-Pro',
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      blue3,
                      style: TextStyle(
                        color: (redScore < blueScore)
                            ? whiteColor
                            : white50Percent,
                        fontFamily: 'SF-Pro',
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(14, 4, 0, 0),
              child: Center(
                child: Column(
                  children: [
                    const Text(
                      "Total",
                      style: TextStyle(
                        color: whiteColor,
                        fontFamily: 'SF-Pro',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '$redScore',
                      style: TextStyle(
                        color: (redScore > blueScore)
                            ? whiteColor
                            : white50Percent,
                        fontFamily: 'SF-Pro',
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '$blueScore',
                      style: TextStyle(
                        color: (redScore < blueScore)
                            ? whiteColor
                            : white50Percent,
                        fontFamily: 'SF-Pro',
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
