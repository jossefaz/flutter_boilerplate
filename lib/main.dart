import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var questions = ["Question 1", "Question 2", "Question 3"];
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
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () => _answerQuestion(0),
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => _answerQuestion(1),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => _answerQuestion(2),
            )
          ],
        ),
      ),
    );
  }
}
