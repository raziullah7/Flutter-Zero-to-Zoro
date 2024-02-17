import 'package:flutter/material.dart';
// import 'package:dice_rolling_app/styled_text.dart';

// const variables are determined at compile-time
const begin = Alignment.topLeft;
const end = Alignment.bottomRight;

// creating a class to improve readability and modularity
class GradientContainer extends StatelessWidget {
  // fields
  final List<Color> colors;
  var activeDiceImage = 'assets/dice-2.png';

  // constructor(s)
  // create a constructor, have a named parameter "key"
  // then forward this "key" to the super class "StatelessWidget"
  // const GradientContainer({key}): super(key: key);
  GradientContainer(this.colors, {super.key});

  // methods
  void rollDice() {
    activeDiceImage = 'assets/dice-4.png';
    print('Changing Image...');
  }

  @override
  Widget build(context) {
    return Container(
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
      child: Center(
        // child: StyledText('Hello World!'),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(activeDiceImage, width: 200),
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
        ),
      ),
    );
  }
}
