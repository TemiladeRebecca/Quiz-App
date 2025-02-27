import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/details_button.dart';
import 'package:quiz_app/category.dart';


class QuestionDetails extends StatelessWidget {

  const QuestionDetails({super.key, required this.onSelectCategory});

  final void Function(String category) onSelectCategory;


  @override
  Widget build(context){
    final selectCategory = category[0];
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Select a Question Category',
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 24,
          ),),
          SizedBox(height: 30,),
          ...selectCategory.category.map((categoryName) {
            return DetailsButton(
              questionCategory: categoryName,
              onTap: () {
                onSelectCategory(categoryName);
              });
          })  
        ],
      ),
    );
  }
}