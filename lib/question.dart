import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questiontText;

  Question(this.questiontText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          this.questiontText + " Choosen",
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
