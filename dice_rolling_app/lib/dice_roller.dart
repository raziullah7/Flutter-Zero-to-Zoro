import 'dart:math';
import 'package:flutter/material.dart';

// declaring an object of Random() for better utility
final randomizer = Random();

class DiceRoller extends StatefulWidget {
  // constructor
  const DiceRoller({super.key});

  @override // createState method
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // fields
  var currentDiceRoll = randomizer.nextInt(6) + 1; // generates [0 - 5] + 1

  // eventhandler method
  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override // build method
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/dice-$currentDiceRoll.png',
          width: 200,
        ),
        // adding SizedBox to add padding
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
