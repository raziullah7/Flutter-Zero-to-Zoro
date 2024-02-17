import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  // fields
  final String text;

  // constructor
  const StyledText(this.text, {super.key});

  // build method
  @override
  Widget build(context) {
    return Text(
      text,
      // changing font-size and color using TextStyle()
      style: const TextStyle(
        fontSize: 28,
        color: Colors.white,
      ),
    );
  }
}
