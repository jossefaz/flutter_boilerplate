import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int resultScore;
  final Function reset;

  Results(this.resultScore, this.reset);
  String get resultText {
    return resultScore > 5 ? "Goood" : "Verry Good";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultText + "\n Your Score is : " + resultScore.toString(),
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            onPressed: reset,
          )
        ],
      ),
    );
  }
}
