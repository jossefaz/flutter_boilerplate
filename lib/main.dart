import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final List<Map> _questions = const [
    {
      "Question": "Favorite song ?",
      "Answers": ['Let it be', 'Lasciate mi cantare', 'La Boheme']
    },
    {
      "Question": "Favorite OS ?",
      "Answers": ["Linux", "iOS", "Windows"]
    },
    {
      "Question": "Favorite Tech ?",
      "Answers": ["Python", "C++", "Golang"]
    }
  ];

  void _answerQuestion(int inputIndex) {
    setState(() => _questionIndex = inputIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("A basic App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                cb: _answerQuestion,
              )
            : Results("Its Done"),
      ),
    );
  }
}
