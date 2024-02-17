import 'package:dice_rolling_app/dice_roller.dart';
import 'package:flutter/material.dart';
// import 'package:dice_rolling_app/styled_text.dart';

// const variables are determined at compile-time
const begin = Alignment.topLeft;
const end = Alignment.bottomRight;

// creating a class to improve readability and modularity
class GradientContainer extends StatelessWidget {
  // fields
  final List<Color> colors;

  // constructor(s)
  // create a constructor, have a named parameter "key"
  // then forward this "key" to the super class "StatelessWidget"
  // const GradientContainer({key}): super(key: key);
  const GradientContainer(this.colors, {super.key});

  @override
  Widget build(context) {
    return Container(
//------------------------------------------------------------------------------
      // managing gradient
      decoration: BoxDecoration(
        // default direction of gradient is left to right
        gradient: LinearGradient(
          colors: colors,
          // changing the gradient from left-to-right TO top-to-bottom
          // begin: Alignment.topLeft,
          // end: Alignment.bottomRight,
          begin: begin,
          end: end,
        ),
      ),
//------------------------------------------------------------------------------
      // managing content
      child: const Center(
        // child: StyledText('Hello World!'),
        child: DiceRoller(),
      ),
    );
  }
}
