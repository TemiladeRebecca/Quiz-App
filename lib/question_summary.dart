import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData,{super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                 color: data['user_answer'] == data['correct_answer'] ? 
                  const Color.fromARGB(255, 123, 236, 126) 
                  : const Color.fromARGB(255, 231, 81, 70), 
                  shape: BoxShape.circle
                ),
                child: Text(((data['question_index'] as int) + 1).toString(),
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 20),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(data['question'] as String,
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 235, 194, 194),
                    fontSize: 20,),
                ),
                  SizedBox(height: 5),
                  Text('Your answer: ${data['user_answer']}', 
                  style: GoogleFonts.lato(
                    color: data['user_answer'] == data['correct_answer'] ? 
                    const Color.fromARGB(255, 123, 236, 126)
                    : const Color.fromARGB(255, 231, 81, 70), 
                    fontSize: 16
                  ),
                ),
                  Text('Correct answer: ${data['correct_answer']}',
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 123, 236, 126),
                    fontSize: 16),
                  )
                ],),
              )
            ]),
          );
        }).toList(),
        ),
      ),
    );
  }
}