import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final questions = [
    {
      "question": "What is you favorite color",
      "answer": [
        {"text": "Red", "score": 10},
        {"text": "Blue", "score": 8},
        {"text": "Black", "score": 15},
        {"text": "Yellow", "score": 5},
      ]
    },
    {
      "question": "What is you favorite animal",
      "answer": [
        {"text": "Dog", "score": 10},
        {"text": "Elephant", "score": 8},
        {"text": "Cheetah", "score": 15},
        {"text": "Fox", "score": 5},
      ]
    },
    {
      "question": "Which is you favorite car",
      "answer": [
        {"text": "Creta", "score": 10},
        {"text": "Honda City", "score": 8},
        {"text": "Harrier", "score": 15},
        {"text": "Seltos", "score": 12},
      ]
    },
    {
      "question": "Which is you favorite bike",
      "answer": [
        {"text": "Bullet", "score": 15},
        {"text": "Pulsar RS200", "score": 10},
        {"text": "Duke", "score": 12},
        {"text": "Apache", "score": 8},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalscore=0;

  
  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
    _totalscore = 0;

    });
     }

  void _answerQuestion(int score) {
    setState(() {
      _totalscore += score;
      _questionIndex = _questionIndex + 1;
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.orange),
      home: Scaffold(
        appBar: AppBar(
            title: Text(
          "My Quiz App",
        )),
        body: _questionIndex< questions.length
            ? Quiz(
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
                questions: questions)
            : Result(_totalscore, resetQuiz),
      ),
    );
  }
}
