import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// import 'package:quiz_app/questions.dart';
import 'package:quiz_app/widgets/quiz_questions.dart';
import 'package:quiz_app/widgets/question_summary.dart';


class ResultScreen extends StatelessWidget {
  const ResultScreen(this.restartQuiz, {super.key, required this.chosenAnswers, required this.resultDetails});

  final List<String> chosenAnswers;

  final List<QuizQuestion> resultDetails;

  final void Function() restartQuiz;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': resultDetails[i].text,
        'correct_answer': resultDetails[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }

    return summary;
  }
  @override


  Widget build(context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = resultDetails.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
            const SizedBox(height: 30,),
            QuestionsSummary(summaryData),
            const SizedBox(height: 30,), 
            OutlinedButton.icon(
              onPressed: restartQuiz, 
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                side: const BorderSide(color: Colors.white),
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
              icon: Icon(Icons.restart_alt),
              label: const Text('Restart Quiz')
            ) 
          ]
        ),
      ),
    );
  }
}