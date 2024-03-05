import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

// custom class for the Questions Screen
class QuestionsScreen extends StatefulWidget {
  // fields
  final void Function(String answer) onSelectAnswer;

  // constructor
  const QuestionsScreen({
    super.key,
    required this.onSelectAnswer,
  });

  // createState() method for stateful widgets
  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreenState();
  }
}

// required internal class for stateful widget
class _QuestionsScreenState extends State<QuestionsScreen> {
  // variable to get question number from the list of question
  int currentQuestionIndex = 0;

  // method to implement changes to the app dynamically
  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              // check for fonts at fonts.google.com
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 200, 150, 240),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            // spreading it to avoid an nested list conflict
            ...currentQuestion.getShuffledAnswers().map(
                  (answer) => AnswerButton(
                    answerText: answer,
                    onTap: () => answerQuestion(answer),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
