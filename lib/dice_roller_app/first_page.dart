import 'package:flutter/material.dart';
import 'package:new_udemy_app/dice_roller_app/dice_roller.dart';

// Alignment? beginAlignment; //this can be done if you dont intend to initialise
// // the variable
// Alignment? endAlignment;
const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class FirstPage extends StatelessWidget {
  const FirstPage(this.colors, {super.key});
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    // beginAlignment = Alignment.topLeft;
    // endAlignment = Alignment.bottomRight;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            begin: beginAlignment,
            end: endAlignment,
          ),
        ),
        child: const Center(
          child: DiceRoller(),
          // StyledText("Hello World!"),
        ),
      ),
    );
  }
}
