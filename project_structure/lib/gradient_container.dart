import 'package:flutter/material.dart';
import 'package:project_structure/styled_text.dart';

// const variables are determined at compile-time
const begin = Alignment.topLeft;
const end = Alignment.bottomRight;

// creating a class to improve readability and modularity
class GradientContainer extends StatelessWidget {
  // fields
  final List<Color> colors;

  // create a constructor, have a named parameter "key"
  // then forward this "key" to the super class "StatelessWidget"

  // const GradientContainer({key}): super(key: key);
  const GradientContainer(this.colors, {super.key});

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
      child: const Center(
        child: StyledText('Hello World!'),
      ),
    );
  }
}
