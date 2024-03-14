import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  final int questionIndex;
  final bool isCorrectAnswer;

  const QuestionIdentifier({
    super.key,
    required this.questionIndex,
    required this.isCorrectAnswer,
  });

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 150, 198, 241)
            : const Color.fromARGB(255, 150, 198, 241),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
          questionNumber.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 22, 2, 56),
        ),
      ),
    );
  }
}
