import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/quiz_questions.dart';

import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/question_details.dart';



class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  List<QuizQuestion> filteredQuestions = [];
  var activeScreen = 'start-screen';

  
  void switchScreen() {
    setState(() {
      activeScreen = 'details-screen';
      selectedAnswers = [];
    });
  }

  void chooseCategory(String category) {
    setState(() {
      filteredQuestions = questions.where((q) => q.category == category).toList();
      activeScreen = 'question-screen';
    });
    
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == filteredQuestions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

   @override

  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'details-screen') {
      screenWidget = QuestionDetails(onSelectCategory: chooseCategory);
    } else if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(
        questions: filteredQuestions, 
        onSelectAnswer: chooseAnswer,);
    } else if (activeScreen == 'result-screen') {
        screenWidget = ResultScreen(
        chosenAnswers: selectedAnswers,
        resultDetails: filteredQuestions,
        switchScreen);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 1, 20, 22), 
                const Color.fromARGB(255, 7, 121, 121)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}