import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // // // By initState // // //
  // // "?" to indicate that the given variable can be NULL
  // Widget? activeScreen;

  // // assigning activeScreen inside "initState" to avoid early runtime initialization
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  // // // By Ternary Operator or IF Conditionals // // //
  List<String> selectedAnswers = [];

  var activeScreen = 'start-screen';

  // method that changes the state
  void switchScreen() {
    setState(() {
      // activeScreen = const QuestionsScreen();
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    setState(() {
      if (selectedAnswers.length == questions.length) {
        selectedAnswers = [];
        activeScreen = 'results-screen';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // By Ternary Operator
    // final screenWidget = activeScreen == 'start-screen'
    //     ? StartScreen(switchScreen)
    //     : const QuestionsScreen();

    // By if statements
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(chosenAnswers: selectedAnswers);
    }

    return MaterialApp(
      title: 'Flutter Quiz',
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 52, 30, 180),
                Color.fromARGB(255, 110, 70, 204),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          // child: activeScreen, // By initState
          child: screenWidget,
        ),
      ),
    );
  }
}
