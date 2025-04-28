class QuizQuestion {
  const QuizQuestion(this.category, this.text, this.answers);

  final String category;
  final String text;
  final List<String> answers;

  List<String> getShuffledQuestions() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}