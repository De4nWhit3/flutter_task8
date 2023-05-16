import 'package:flutter/material.dart';

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
                setState(() {});
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
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
