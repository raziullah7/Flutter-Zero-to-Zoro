import 'package:flutter/material.dart';
import 'package:project_structure/styled_text.dart';

// creating a class to improve readability and modularity
class GradientContainer extends StatelessWidget {
  // create a constructor, have a named parameter "key"
  // then forward this "key" to the super class "StatelessWidget"

  // const GradientContainer({key}): super(key: key);
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        // default direction of gradient is left to right
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 26, 5, 105),
            Color.fromARGB(255, 190, 17, 124),
          ],
          // changing the gradient from left-to-right TO top-to-bottom
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
