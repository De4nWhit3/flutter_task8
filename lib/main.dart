import 'package:flutter/material.dart';
import 'package:flutter_task8/question_class.dart';
import 'package:flutter_task8/question_page.dart';
import 'package:flutter_task8/result_page.dart';

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
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const MyHomePage(),
        '/questions': (BuildContext context) => const QuestionPage(),
        '/result': (BuildContext context) => const ResultPage(),
      },
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
              backgroundColor: buttonBackground,
              foregroundColor: fontsColor,
              icon: const Icon(Icons.star),
              label: const Text(style: TextStyle(fontSize: 25), 'Disney'),
              onPressed: () {
                setState(() {
                  Navigator.of(context).pushNamed('/questions');
                });
              },
            ),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton.extended(
              backgroundColor: buttonBackground,
              foregroundColor: fontsColor,
              icon: const Icon(Icons.ac_unit),
              label: const Text(style: TextStyle(fontSize: 25), 'Pixar'),
              onPressed: () {
                setState(() {
                  Navigator.of(context).pushNamed('/questions');
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
  // from the route return bool if question was answered wrong or correct
  // create a question widget for each question in a category
  // sort the questions into categories in the map
}
