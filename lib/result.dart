import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;
  Result(this.resultScore, this.resetQuiz);

  String get resultPhase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome';
    } else if (resultScore <= 12) {
      resultText = 'Likable ';
    } else if (resultScore <= 16) {
      resultText = 'Tou are strange';
    } else {
      resultText = 'You are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetQuiz,
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
