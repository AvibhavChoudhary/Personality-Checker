import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function reset;
  Result(this.resultScore,this.reset);

  String get resultPhrase {
    String resultText;
    if (resultScore < 30) {
      resultText = "You are a average personaltiy, Your Score is : $resultScore";
    } else if (resultScore < 45) {
      resultText = "You are an decent personality, Your Score is : $resultScore";
    } else if (resultScore < 55) {
      resultText = "You are an interesting personality, Your Score is : $resultScore";
    } else {
      resultText = "Boommm!...You are just an awesome personality, Your Score is : $resultScore";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          RaisedButton(
              onPressed: reset,
              child: Icon(
                Icons.refresh,
                size: 20,
              ))
        ],
      ),
    );
  }
}
