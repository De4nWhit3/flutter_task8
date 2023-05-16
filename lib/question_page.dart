import 'package:flutter/material.dart';
import 'package:flutter_task8/question_class.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Questions'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            FloatingActionButton.extended(
                label: const Text("Results"),
                onPressed: () {
                  // TODO: pass through the score
                  Navigator.of(context).pushNamed('/result');
                }),
          ],
        ),
      ),
    );
  }
}
