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
  var _totalScore = 0;
  final List<Map> _questions = const [
    {
      "Question": "Favorite song ?",
      "Answers": [
        {"text": 'Let it be', "score": 1},
        {"text": 'Lasciate mi cantare', "score": 2},
        {"text": 'La Boheme', "score": 3}
      ]
    },
    {
      "Question": "Favorite OS ?",
      "Answers": [
        {"text": 'Linux', "score": 1},
        {"text": 'iOS', "score": 2},
        {"text": 'Windows', "score": 3}
      ]
    },
    {
      "Question": "Favorite Tech ?",
      "Answers": [
        {"text": 'Python', "score": 1},
        {"text": 'C++', "score": 2},
        {"text": 'Golang', "score": 3}
      ]
    }
  ];

  void _answerQuestion(int inputIndex, int score) {
    setState(() {
      _questionIndex = inputIndex;
      _totalScore += score;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
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
            : Results(_totalScore, _resetQuiz),
      ),
    );
  }
}
