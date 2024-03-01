import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  // field
  // passing a function through argument from the parent class
  // "Lifting the State Up" for conditional rendering of screens
  final void Function() startQuiz;

  // constructor
  const StartScreen(this.startQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // this approach gives a big performance hit (not recommended)
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),

          // instead just add a transparent color to it
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 30),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          // Image.asset('assets/images/the_face.jpeg'),
          Image.asset('assets/images/duck_face.jpeg'),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.red[600],
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 20),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            // label: const Text('Click Me Harder Daddy!!'),
            label: const Text('Please Click Me'),
          ),
        ],
      ),
    );
  }
}
