import 'package:quiz_app/models/quiz_question.dart';

const questions = [
  // the correct answer is the first item in each list
  QuizQuestion(
    // question statement
    'What are the main building blocks of Flutter UIs?',
    [
      // list of possible answers
      'Widgets', // correct
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion(
    // question statement
    'How are Flutter UIs built?',
    [
      // list of possible answers
      'By combining widgets in code', // correct
      'By combining widgets in a visual editor',
      'By defining widgets in config files',
      'By using XCode for iOS and Android Studio for Android',
    ],
  ),
  QuizQuestion(
    // question statement
    'What\'s the purpose of a StatefulWidget?',
    [
      // list of possible answers
      'Update UI as data changes', // correct
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    // question statement
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      // list of possible answers
      'StatelessWidget', // correct
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    // question statement
    'What happens if you change data in a StatelessWidget?',
    [
      // list of possible answers
      'The UI is not updated', // correct
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    // question statement
    'How should you update data inside of StatefulWidgets?',
    [
      // list of possible answers
      'By calling setState()', // correct
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
];
