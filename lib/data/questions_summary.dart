import 'package:flutter/material.dart.';
import 'package:quizapp/identifier.dart';
import 'package:quizapp/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  QuestionsSummary(this.summaryData,{super.key});



  final List<Map<String,Object>>summaryData;


@override
  Widget build(BuildContext context){



return SizedBox(
  height: 400,
  width: double.infinity,
  child: SingleChildScrollView(

      child: Column(

        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: summaryData.map((data) {
        return SummaryItem(data);




      },
      ).toList(),
      ),
    ),

);
  }
}