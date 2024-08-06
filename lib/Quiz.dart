import 'package:flutter/material.dart';
import 'package:quizapp/Start_Screen.dart';
import 'package:quizapp/Questions.dart';
import 'package:quizapp/data/Questions_new.dart';
import 'package:quizapp/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}


class _QuizState extends State<Quiz> {
   List<String>selectedAnswers =[];
var activeScreen = 'ResultsScreen';
void switchScreen () {
  setState(() {
    activeScreen = 'Question';
  });
}
void chooseAnswer(String answer){
  selectedAnswers.add(answer);
  if (selectedAnswers.length == questions.length) {
    setState(() {
      activeScreen = 'StartScreen';
    });
  }
}

void restartQuiz(){
  setState(() {
    selectedAnswers = [];
    activeScreen = 'Question';
  });
}

  @override
  Widget build( context) {
    Widget screenWidget = StartScreen(switchScreen);

if (activeScreen == 'Question') {
  screenWidget = Questions(
    onSelectAnswer:chooseAnswer,);
}
if (activeScreen ==  'StartScreen'){
  screenWidget =   ResultsScreen(
    chosenAnswers:selectedAnswers,
  onRestart : restartQuiz,
  );
}

    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromARGB(255, 49, 113, 198),
                  Color.fromARGB(255, 24, 72, 126),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,

              ),
            ),
            child: screenWidget,
      ),
      ) ,
    );
  }
  }
