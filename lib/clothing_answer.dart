import 'package:flutter/material.dart';

class ClothingAnswer extends StatelessWidget {

  final String _answerText;
  VoidCallback tapped;

  ClothingAnswer(this.tapped, this._answerText);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: tapped,
        child: Text(
          _answerText,
          style: const TextStyle(
              color: Colors.red
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.green,
        )
    );

  }

}