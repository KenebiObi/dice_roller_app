import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // var initialDice = "assets/images/dice-images/dice-1.png";
  // void rollDice() {
  //   var randomDiceRoll = Random().nextInt(6) + 1;
  //   setState(
  //     () {
  //       initialDice = "assets/images/dice-images/dice-$randomDiceRoll.png";
  //       print("Rolled Dice");
  //     },
  //   );
  // }

  // OR
  var diceRandomizer = Random();
  var currentDiceValue = 3;
  void rollDice() {
    setState(
      () {
        currentDiceValue = diceRandomizer.nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          // initialDice,
          // OR
          "assets/images/dice-images/dice-$currentDiceValue.png",
          width: 200.0,
          height: 200.0,
        ),
        const SizedBox(height: 20.0),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
          ),
          onPressed: rollDice,
          child: const Text(
            "Roll Dice",
            style: TextStyle(
              fontSize: 17.0,
            ),
          ),
        )
      ],
    );
  }
}
