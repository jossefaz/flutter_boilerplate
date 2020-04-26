import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final String resultText;

  Results(this.resultText);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(resultText),
    );
  }
}
