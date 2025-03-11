import 'package:flutter/material.dart';

class MatchTile extends StatelessWidget {
  // Parameters for teams and score
  final String blue1;
  final String blue2;
  final String blue3;
  final String red1;
  final String red2;
  final String red3;
  final int blueScore;
  final int redScore;

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
  });

  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}