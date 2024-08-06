import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/Answer_button.dart';
import 'package:quizapp/data/Questions_new.dart';

class Questions extends StatefulWidget {
  const Questions({super.key,required this.onSelectAnswer});
final void Function (String answer) onSelectAnswer;
  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer){
    widget.onSelectAnswer(selectedAnswer);
    //currentQuestionIndex = currentQuestionIndex + 1;
    //currentQuestionIndex += 1;
    setState(() {
      currentQuestionIndex++;
    });
  }
  @override
  Widget build(context) {
    final currentQuestion =questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Text(
           currentQuestion.text,
             style: GoogleFonts.lato(fontSize: 24,
                 color: Colors.white,),

            textAlign:TextAlign.center ,
         ),
          const SizedBox(height: 30,),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: () {
                 answerQuestion(answer);
                },);
            }),

        ],
        ),
      ),
    ) ;
  }
}
