import 'package:flutter/material.dart';

import 'data/questions.dart';

class ResultsScreen extends StatelessWidget {
  // field
  final List<String> chosenAnswers;

  // constructor
  const ResultsScreen({super.key, required this.chosenAnswers});

  // method to return the summary
  List<Map<String, Object>> getSummaryData() {
    // defining the list to be returned
    final List<Map<String, Object>> summary = [];
    // iterating over the list and mapping each question
    for (int i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }
    // returning the list of maps
    return summary;
  }

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
