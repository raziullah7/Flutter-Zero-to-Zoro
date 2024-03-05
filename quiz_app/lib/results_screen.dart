import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  // field
  List<String> chosenAnswers;

  // constructor
  ResultsScreen({super.key, required this.chosenAnswers});

  // the good old build method
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // the main heading text (the summary)
            const Text("You got X out of Y correct!"),
            // some margin
            const SizedBox(height: 40),
            // inside scrollable element
            const Text("Bruh"),
            // some more margin
            const SizedBox(height: 40),
            // the retry button at the end
            TextButton(
              onPressed: () {},
              child: const Text("Retry"),
            )
          ],
        ),
      ),
    );
  }
}
