
import 'package:flutter/material.dart';
import 'package:quizapp/identifier.dart';

class SummaryItem extends StatelessWidget {
   SummaryItem(this.itemData,{super.key});
  final Map<String,Object> itemData;
  @override
  Widget build(BuildContext context) {
    final correctAnswer= itemData["user_answer"] == itemData['correct_answer'];
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Identifier(isCorrectAnswer: correctAnswer, questionIndex: itemData['question_index'] as int,),
        SizedBox(width: 8,),
        Expanded(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [



            Text(itemData['question'] as String,style: const TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w600)),
            const SizedBox(height: 8,),
            Text(itemData['user_answer'] as String,style: const TextStyle(color:Colors.deepOrange,fontWeight: FontWeight.w600)),
            Text(itemData['correct_answer'] as String,textAlign:TextAlign.start,style: const TextStyle(color:Colors.green,fontWeight: FontWeight.w600)),
            const SizedBox(height: 8,),

          ],),
        ),

      ],
    );
  }
}

