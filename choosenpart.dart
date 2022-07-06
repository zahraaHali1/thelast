import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../static/appcolor.dart';
import '../edition.dart';

class choosen extends StatelessWidget {
  const choosen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 450,
        left: 0,
        right: 0,
        child: Container(
          height: 500,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.backgroundDark
          ),
          child: Padding(
              padding: EdgeInsets.only(left: 20,top: 30,bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text ("Choose your edition",style: GoogleFonts.aBeeZee(color: AppColors.secondaryText,fontSize: 22),),
                  ChooseEdition(),

                ],
              )




          ),


        )
    );
  }
}
