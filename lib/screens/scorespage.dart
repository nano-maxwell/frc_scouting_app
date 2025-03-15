// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:frc_scouting_app/elements/matchtile.dart';
import 'package:frc_scouting_app/utils/colors.dart';

class ScoresPage extends StatefulWidget {
  const ScoresPage({super.key});

  @override
  State<ScoresPage> createState() => _ScoresPageState();
}

class _ScoresPageState extends State<ScoresPage> {
  List<String> eventKeys = ['2025week0', '2025mefal'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_Color,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 70),
            Padding(
              padding: const EdgeInsets.only(bottom:15.0),
              child: Text(
                "Match Data",
                style: TextStyle(
                  color: whiteColor,
                  fontFamily: "SF-Pro",
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            
            // Scrolling row of event codes
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        'BCVI',
                        style: TextStyle(
                          color: whiteColor,
                          fontFamily: 'SF-Pro',
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        'CAMB',
                        style: TextStyle(
                          color: white50Percent,
                          fontFamily: 'SF-Pro',
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        'COAC',
                        style: TextStyle(
                          color: white50Percent,
                          fontFamily: 'SF-Pro',
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        'CAPH',
                        style: TextStyle(
                          color: white50Percent,
                          fontFamily: 'SF-Pro',
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        'GAGAI',
                        style: TextStyle(
                          color: white50Percent,
                          fontFamily: 'SF-Pro',
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        'INMIS',
                        style: TextStyle(
                          color: white50Percent,
                          fontFamily: 'SF-Pro',
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        'ISDE1',
                        style: TextStyle(
                          color: white50Percent,
                          fontFamily: 'SF-Pro',
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Event match overviews
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    MatchTile(
                      red1: '4253', red2: '2438', red3: '5516',
                      blue1: '7332', blue2: '9641', blue3: '5468',
                      redScore: 101, blueScore: 90,
                      compLevel: 'qm', matchNum: 1, eventKey: '2025week0',
                    ),
                    MatchTile(
                      red1: '4253', red2: '2438', red3: '5516',
                      blue1: '7332', blue2: '9641', blue3: '5468',
                      redScore: 101, blueScore: 190,
                      compLevel: 'qm', matchNum: 1, eventKey: '2025week0',
                    )
                  ]
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




/*
MatchTile(
                        red1: '4253', red2: '2438', red3: '5516', 
                        blue1: '7332', blue2: '9641', blue3: '5468', 
                        redScore: 101, blueScore: 90, 
                        compLevel: 'qm', matchNum: 1,
                      ),
*/