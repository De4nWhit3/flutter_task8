import 'package:flutter/material.dart';
import 'package:flutter_task8/question_class.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: '/',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const MaterialColor fontsColor = Colors.brown;
  static const Color buttonBackground = Colors.yellow;
  Game gameQuestions = Game();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent.shade100,
      appBar: AppBar(
        backgroundColor: buttonBackground,
        title: const Text('Dean\'s Quiz App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              style: TextStyle(
                color: fontsColor,
                fontSize: 30,
              ),
              'Select a category:',
            ),
            const SizedBox(
              height: 30,
            ),
            FloatingActionButton.extended(
              heroTag: 'disneyQuestions',
              backgroundColor: buttonBackground,
              foregroundColor: fontsColor,
              icon: const Icon(Icons.star),
              label: const Text(style: TextStyle(fontSize: 25), 'Disney'),
              onPressed: () {
                setState(() {
                  List<Question> questions = gameQuestions.questions['Disney']!;

                  for (int i = 0; i < questions.length; i++) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return RadioQuestion(question: questions[i]);
                    }));
                  }
                });
              },
            ),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton.extended(
              heroTag: 'PixarQuestions',
              backgroundColor: buttonBackground,
              foregroundColor: fontsColor,
              icon: const Icon(Icons.ac_unit),
              label: const Text(style: TextStyle(fontSize: 25), 'Pixar'),
              onPressed: () {
                setState(() {
                  // TODO: Display questions
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Game {
  String disney = 'Disney';
  String pixar = 'Pixar';

  Map<String, List<Question>> questions = {
    'Disney': <Question>[],
    'Pixar': <Question>[],
  };

  Game() {
    // INITIALIZE DISNEY QUESTIONS
    List<Answer> q1Answers = [
      Answer(answer: 'Johnny Depp', correct: false),
      Answer(answer: 'Walt Disney', correct: true),
      Answer(answer: 'Frank Sinatra', correct: false),
    ];

    addQuestion(
        question: 'Who founded Disney?', catagory: disney, answers: q1Answers);

    List<Answer> q2Answers = [
      Answer(answer: 'Four', correct: true),
      Answer(answer: 'Six', correct: false),
      Answer(answer: 'Five', correct: false),
    ];

    addQuestion(
        question: 'How many fingers does Mickey Mouse have?',
        catagory: disney,
        answers: q2Answers);
  }

  void addQuestion(
      {required String question,
      required String catagory,
      required List<Answer> answers}) {
    questions[catagory]!
        .add(Question(question: question, answers: answers, category: disney));
  }
}

class RadioQuestion extends StatefulWidget {
  final Question question;
  const RadioQuestion({super.key, required this.question});

  @override
  State<RadioQuestion> createState() => _RadioQuestionState();
}

class _RadioQuestionState extends State<RadioQuestion> {
  String? selectedAnswer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dean\'s Quiz App')),
      body: Column(
        children: <Widget>[
          Text(widget.question.question),
          RadioListTile<String>(
            value: widget.question.answers[0].answer,
            groupValue: selectedAnswer,
            onChanged: (String? value) {
              setState(() {
                selectedAnswer = value;
              });
            },
            title: Text(widget.question.answers[0].answer),
          ),
          RadioListTile<String>(
            value: widget.question.answers[1].answer,
            groupValue: selectedAnswer,
            onChanged: (String? value) {
              setState(() {
                selectedAnswer = value;
              });
            },
            title: Text(widget.question.answers[1].answer),
          ),
          RadioListTile<String>(
            value: widget.question.answers[2].answer,
            groupValue: selectedAnswer,
            onChanged: (String? value) {
              setState(() {
                selectedAnswer = value;
              });
            },
            title: Text(widget.question.answers[2].answer),
          ),
          FloatingActionButton.extended(
              onPressed: () {
                Navigator.of(context).pop();
              },
              label: const Text('Next'))
        ],
      ),
    );
  }
}
