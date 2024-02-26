import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreenState();
  }
}

void theFunction() {}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "The question...",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 30),
          AnswerButton(answerText: "Answer 1", onTap: theFunction),
          AnswerButton(answerText: "Answer 2", onTap: theFunction),
          AnswerButton(answerText: "Answer 3", onTap: theFunction),
          AnswerButton(answerText: "Answer 4", onTap: theFunction),
        ],
      ),
    );
  }
}
