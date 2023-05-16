import 'package:flutter_task8/question_class.dart';

class Questions {
  late List<Question> questions;

  Questions() {
    // initialize questions
    // Disney questions
    String disney = "Disney";
    List<Answer> q1Answers = [
      Answer(answer: 'Johnny Depp', correct: false),
      Answer(answer: 'Walt Disney', correct: true),
      Answer(answer: 'Frank Sinatra', correct: false)
    ];
    Question q1 = Question(
        question: 'Who founded Disney?', answers: q1Answers, category: disney);
    questions.add(q1);

    List<Answer> q2Answers = [
      Answer(answer: 'Four', correct: true),
      Answer(answer: 'Six', correct: false),
      Answer(answer: 'Five', correct: false)
    ];
    Question q2 = Question(
        question: 'How many fingers does Mickey mouse have?',
        answers: q2Answers,
        category: disney);
    questions.add(q2);

    List<Answer> q3Answers = [
      Answer(answer: 'Cinderella', correct: false),
      Answer(answer: 'Peter Pan', correct: false),
      Answer(answer: 'Snow White', correct: true)
    ];
    Question q3 = Question(
        question: 'What was the name of Disney\'s first movie?',
        answers: q3Answers,
        category: disney);
    questions.add(q3);

    //pixar questions
  }
}
