import 'package:flutter/material.dart';
import './question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final Function cb;
  final List<Map> questions;
  Quiz({
    @required this.questions,
    @required this.questionIndex,
    @required this.cb,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]["Question"]),
        ...(questions[questionIndex]["Answers"] as List<String>)
            .map((answer) => Answer(answer, () => cb(questionIndex + 1)))
            .toList()
      ],
    );
  }
}
