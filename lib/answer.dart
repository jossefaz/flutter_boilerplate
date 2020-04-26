import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function cb;
  Answer(this.answerText, this.cb);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          textColor: Colors.white,
          color: Colors.blue,
          child: Text(answerText),
          onPressed: cb),
    );
  }
}
