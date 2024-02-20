import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 300),
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
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.red[600],
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 20)),
            // child: const Text('Click Me Harder Daddy!!'),
            child: const Text('Please Click Me'),
          ),
        ],
      ),
    );
  }
}
