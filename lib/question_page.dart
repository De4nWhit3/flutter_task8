import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  int questionNr = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question $questionNr'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            FloatingActionButton.extended(
                label: const Text("Next"),
                onPressed: () {
                  // navigate back and return true/false if the question was answered correctly
                }),
          ],
        ),
      ),
    );
  }
}
