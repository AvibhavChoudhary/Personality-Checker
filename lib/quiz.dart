import 'package:flutter/material.dart';
import 'package:quiz/button.dart';
import 'package:quiz/question.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function answerQuestion;

  Quiz({@required this.questionIndex,@required this.answerQuestion,@required this.questions,});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[questionIndex]["question"]),
      ...(questions[questionIndex]["answer"] as List<Map<String, Object>>)
          .map((answer) {
        return AnswerButton(()=>answerQuestion(answer["score"]), answer["text"]);
      }).toList()
    ]);
  }
}
