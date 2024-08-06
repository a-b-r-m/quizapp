import 'package:flutter/material.dart.';

class AnswerButton extends StatelessWidget {
  const AnswerButton( {super.key,
    required this.answerText,
    required this.onTap,
  });
  final String answerText;
  final void Function()onTap;
  @override
  Widget build (BuildContext context){
    return  ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 10,
        horizontal: 60),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.blueGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        )
      ),
      child:  Text(answerText,style: TextStyle(color: Colors.white),textAlign: TextAlign.center),

    );
  }
}
