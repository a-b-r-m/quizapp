import 'package:flutter/material.dart';

class Identifier extends StatelessWidget {
  final int questionIndex;
  final bool isCorrectAnswer;
  const Identifier({super.key,required this.isCorrectAnswer,required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex +1;
    return Container(
      width: 30,
      height: 30,
      alignment:Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isCorrectAnswer? Colors.green:Colors.pink
      ),
      child: Text(
        questionNumber.toString(),style: const TextStyle(color: Colors.white),
      ),
    );
  }
}

