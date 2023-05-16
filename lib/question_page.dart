import 'package:flutter/material.dart';

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
                  Navigator.of(context).pushNamed('/result');
                }),
          ],
        ),
      ),
    );
  }
}
