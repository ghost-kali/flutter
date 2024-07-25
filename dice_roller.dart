import 'package:first_app/textstyle.dart';
import 'package:flutter/material.dart';
import 'dart:math';

var randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceimage = 'assets/images/dice-1.png';
  List<String> img = [
    'assets/images/dice-1.png',
    'assets/images/dice-2.png',
    'assets/images/dice-3.png',
    'assets/images/dice-4.png',
    'assets/images/dice-5.png',
    'assets/images/dice-6.png'
  ];

  void rolldice() {
    setState(() {
      activeDiceimage = img[randomizer.nextInt(6)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        activeDiceimage,
        width: 200,
      ),
      const SizedBox(
        height: 20,
      ),
      TextButton(
        onPressed: rolldice,
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
        ),
        child: const Text_Style("Roll Dice"),
      )
    ]);
  }
}
