import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion(int index) {
    questionIndex = index;
  }

  var questionIndex = 0;
  var questions = ["Question 1", "Question 2", "Question 3"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("A basic App"),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () => answerQuestion(0),
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => answerQuestion(1),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => answerQuestion(2),
            )
          ],
        ),
      ),
    );
  }
}
