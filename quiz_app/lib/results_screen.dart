import 'package:flutter/material.dart';
import 'package:quiz_app/questions_summary/questions_summary.dart';
import 'data/questions.dart';

class ResultsScreen extends StatelessWidget {
  // field
  final List<String> chosenAnswers;
  final void Function() startQuiz;

  // constructor
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.startQuiz});

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
    // important variables
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData
        .where(
          (e) => e['correct_answer'] == e['user_answer'],
        )
        .length;

    // return of the build function
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // the main heading text (the summary)
            Text(
              "You got $numTotalQuestions out of $numCorrectQuestions correct!",
              style: const TextStyle(
                color: Color.fromARGB(255, 200, 150, 240),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            // some margin
            const SizedBox(height: 40),
            // inside scrollable element
            QuestionsSummary(summaryData),
            // some more margin
            const SizedBox(height: 40),
            // the retry button at the end
            TextButton.icon(
              onPressed: startQuiz,
              icon: const Icon(
                Icons.restart_alt_rounded,
                color: Colors.white,
              ),
              label: const Text(
                "Retry",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
