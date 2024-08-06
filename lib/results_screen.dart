import 'package:flutter/material.dart';
import 'package:quizapp/data/Questions_new.dart';
import 'package:quizapp/data/questions_summary.dart';
import 'package:google_fonts/google_fonts.dart';
class ResultsScreen extends StatefulWidget{
 const ResultsScreen ({super.key,required this.chosenAnswers,required this.onRestart
 });
 final void Function() onRestart;
 final List<String>chosenAnswers;

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
 List<Map<String,Object>>getSummaryData() {
   final List<Map<String,Object>>summary =[];
 for (var i = 0; i< widget.chosenAnswers.length; i++) {
summary.add({
  'question_index': i,
  'question': questions[i].text,
  'correct_answer': questions[i].answers[0],
  'user_answer': widget.chosenAnswers[i]
});
 }
 return summary;
 }

  @override
  Widget build (BuildContext context){


 final summaryData = getSummaryData();
   final numTotalQuestions = questions.length;
   final numCorrectQuestions = summaryData.where((data) {
     return data['user_answer'] == data['correct_answer'];
   }).length;
    return SizedBox(
      height: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Center(

                 child: Text('You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
                     style: GoogleFonts.lato(
                         color: Colors.white,fontSize: 17,
                     ),
                 ),
               ),

            const SizedBox(height: 15,
            ),
           QuestionsSummary(getSummaryData()),

             TextButton.icon(
              icon: const Icon(Icons.refresh,color: Colors.white),
              onPressed: widget.onRestart,
              label:  const Text('Restart Quiz!',
                  style:TextStyle(

                  color: Colors.white) )
              ,
            )
          ],
        ),
      ),
    );
  }
}