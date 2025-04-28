import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/widgets/quiz_questions.dart';

import 'package:quiz_app/widgets/answer_button.dart';


class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer, required this.questions});
  final List<QuizQuestion> questions;

  final void Function(String answer) onSelectAnswer;


  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
    
  }
  
  @override
  Widget build(context) {
    final currentQuestion = widget.questions[currentQuestionIndex];
    return Center(
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 209, 166, 166),
                fontSize: 24,
                fontWeight: FontWeight.bold,),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledQuestions().map((item) {
              return AnswerButton(
                answerText: item, 
                onTap: () {
                answerQuestion(item);
              });
            })
          ],
        ),
      ),
    );
  }
}