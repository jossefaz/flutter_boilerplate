import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var questions = [
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
    setState(() => _questionIndex = inputIndex > 2 ? 0 : inputIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("A basic App"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]["Question"]),
            ...(questions[_questionIndex]["Answers"] as List<String>)
                .map((answer) {
              return Answer(answer, () => _answerQuestion(_questionIndex + 1));
            }).toList()
          ],
        ),
      ),
    );
  }
}
