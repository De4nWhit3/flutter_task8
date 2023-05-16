class Question {
  String question;
  String category;
  List<Answer> answers;
  bool? answeredCorrectly;

  Question(
      {required this.question, required this.answers, required this.category});
}

class Answer {
  String answer;
  bool correct;
  Answer({required this.answer, required this.correct});
}
