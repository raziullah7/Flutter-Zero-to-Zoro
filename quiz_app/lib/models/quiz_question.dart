// a structure in which each question is stored
// its like an interface that is applied to each question
// in short, its a blueprint of every question

class QuizQuestion {
  // fields
  final String text;
  final List<String> answers;

  // constructor
  const QuizQuestion(this.text, this.answers);

  // method
  List<String> getShuffledAnswers() {
    final List<String> shuffledList = List.of(answers);
    // shuffle only alter the list and not returns it
    shuffledList.shuffle();
    // it must be done with a shallow copy (variable) otherwise
    // it will alter the original list of data
    return shuffledList;
  }
}
