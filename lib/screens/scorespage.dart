// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:frc_scouting_app/utils/colors.dart';

class ScoresPage extends StatelessWidget {
  const ScoresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_Color,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 70),
              Text(
                "Match Data",
                style: TextStyle(
                  color: whiteColor,
                  fontFamily: "SF-Pro",
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}