import 'package:flutter/material.dart';
import 'package:mis_lab2/clothing_answer.dart';
import './clothing_question.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{

  void _iWasTapped() {
    setState(() {
      _questionIndex += 1;
      if (_questionIndex > 2) _questionIndex = 0;
    });
  }

  var questions = [
    {
      'question': 'Select Clothing',
      'answer': ['T-Shirt', 'Trousers', 'Jacket']
    },
    {
      'question': 'Select color',
      'answer': ['Green', 'Red', 'White']
    },
    {
      'question': 'Select size',
      'answer': ['S', 'M', 'L',]
    },
  ];

  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MIS Lab 2',
      home: Scaffold(
        appBar: AppBar(
          title: Text("MIS Lab 2"),
        ),
        body: Column(
          children: [
            ClothingQuestion(questions[_questionIndex]['question'] as String),
            ...(questions[_questionIndex]['answer'] as List<String>).map((answer) {
              return ClothingAnswer(_iWasTapped, answer);
            })
          ],
        )
      ),
    );
  }
}

