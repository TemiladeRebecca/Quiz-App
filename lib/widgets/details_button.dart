import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class DetailsButton extends StatelessWidget {

  const DetailsButton({super.key, required this.questionCategory, required this.onTap});

  final String questionCategory;

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
              onPressed: onTap,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                backgroundColor: const Color.fromARGB(255, 67, 67, 236),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
              ),
              child: Text(questionCategory,
              textAlign: TextAlign.center, 
              style: GoogleFonts.lato(
                textStyle: TextStyle(fontSize: 18),
                ),
              ),
            ),
    );
  }
}