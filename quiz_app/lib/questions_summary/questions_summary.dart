import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const QuestionsSummary(this.summaryData, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: const TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Expanded(
                    child: Column(children: [
                      Text(
                        data['question'] as String,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        data['user_answer'] as String,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 217, 70, 185),
                        ),
                      ),
                      Text(
                        data['correct_answer'] as String,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 26, 176, 255),
                        ),
                      ),
                    ]),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
