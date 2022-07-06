import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../static/appcolor.dart';



class MainCategory extends StatelessWidget {
  const MainCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        category(
            text: 'PS4',
            shadow: AppColors.darkPurple,
            color: AppColors.avatarActive,
            image: 'assets/images/ps4.png',
            background:AppColors.lightPurple,
            backgroundActive:true
        ),

        category(
            text: 'Xbox',
            shadow: AppColors.darkGreen,
            color: AppColors.xboxTheme,
            image: 'assets/images/xbox.png',
            background:AppColors.darkGreenBackground,
            backgroundActive:false
        ),
        category(
            text: 'switch',
            shadow: AppColors.darkRed,
            color: AppColors.streamTheme,
            image: 'assets/images/steam.png',
            background:AppColors.darkRedBackground,
            backgroundActive:false
        ),

        category(
            text: 'steam',
            shadow: AppColors.darkPurple,
            color: AppColors.cpuTheme,
            image: 'assets/images/cpu.png',
            background:AppColors.darkPurpleBackground,
            backgroundActive:false
        ),




      ],
    );
  }

  Widget category ({
    required String text ,
    required String image,
    required List<Color> color ,
    required Color shadow ,
    required Color background,
    required bool backgroundActive ,
  })

  {
    return Container(
        margin: const EdgeInsets.only(top:30),
        height: 120,
        width: 60,
        decoration: backgroundActive == true?BoxDecoration(
          borderRadius: BorderRadius.circular(28.0),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors:AppColors.avatarActive,
          ) ,
        ) :BoxDecoration(
          borderRadius: BorderRadius.circular(28.0),
          color: background,
        ),
        child: Column(
          children: [
            Container(
                width: 60,
                height: 65,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: color,
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          offset: Offset(0.0,5),
                          color: shadow,
                          spreadRadius: 3,
                          blurRadius: 10
                      )
                    ]
                ),
                child:Center(
                  child: Image.asset(image,width: 40,height: 40,fit: BoxFit.cover,),
                )
            ),
            SizedBox(height: 20,),
            Text(text,style: GoogleFonts.actor(color: AppColors.mainText),)
          ],
        )



    );
  }



}