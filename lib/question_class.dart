class Question {
  String question;
  List<Answer> answers;
  String category;
  bool answeredCorrectly;

  Question(
      {required this.question,
      required this.answers,
      required this.category,
      required this.answeredCorrectly});
}

class Answer {
  String answer;
  bool correct;
  Answer({required this.answer, required this.correct});
}
