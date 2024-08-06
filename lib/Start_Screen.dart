import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return  Center(
        child:Column(mainAxisSize: MainAxisSize.min ,children: [
          Center(child: Image.network('https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png',width: 300,),
          ),const SizedBox(height: 80,),
           Text('Learn Flutter The Fun Way',
          style: GoogleFonts.lato(
            color:const Color.fromARGB(255,237,223,252),
            fontSize: 24,
          ),
          ),
          const SizedBox(height: 30
          ),
          OutlinedButton.icon(
              onPressed: () {
              startQuiz();
    },
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
              style: OutlinedButton.styleFrom(
                  foregroundColor:Colors.white),
          )
          ],
        ),
        );
  }
}
