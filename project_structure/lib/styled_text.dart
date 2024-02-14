import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  // constructor
  const StyledText({super.key});

  // build method
  @override
  Widget build(context) {
    return const Text(
      'Hello World!',
      // changing font-size and color using TextStyle()
      style: TextStyle(
        fontSize: 28,
        color: Colors.white,
      ),
    );
  }
}
