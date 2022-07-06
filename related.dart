import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../static/appcolor.dart';




class Related extends StatelessWidget {
  const Related({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20,top: 30,bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text ("Related",style: GoogleFonts.aBeeZee(color: AppColors.secondaryText,fontSize: 22),),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [

                  relatedInfo(
                    text: "PC",
                    img: "pc.png",
                  ),
                  relatedInfo(
                    text: "Game Over",
                    img: "game-over.png",
                  ),




                ],

              )
              ,
            ),

          ],
        )




    );
  }











  Widget relatedInfo({
    required String img ,
    required String text,
  })

  {
    return  Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Container(
            width: 120,
            height: 90,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/$img"),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin:Alignment.topLeft,
                end: Alignment.bottomRight,
                colors:AppColors.themeContainer,
              ),

            ),
          ),
          SizedBox(height: 10),
          Text(text,style: GoogleFonts.russoOne(fontSize: 20,color: AppColors.mainText),)
        ],
      ),


    );
  }



}