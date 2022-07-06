
 import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../static/appcolor.dart';

 class ChooseEdition extends StatelessWidget {
   const ChooseEdition({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Container(
       height: 400,
       child: ListView(
         scrollDirection: Axis.horizontal,
         children: [

          items(text: "Ellie Edition", icon: Icons.play_arrow,color: AppColors.cpuTheme,colorStack: AppColors.lightPurple),
           items(text: "DLX Edition", icon: Icons.star,color: AppColors.themeContainer,colorStack: AppColors.backgroundLight),

         ]),

     );
   }


 Widget items(
   {required String text,
   required IconData icon,
     required List<Color> color,
     required Color colorStack
   }
     ){

     return Padding(
       padding: const EdgeInsets.only(right: 20,top: 10),
       child: Column(
         children: [
           Container(
             width: 120,
             height: 150,
             decoration: BoxDecoration(

               borderRadius: BorderRadius.circular(10),
               gradient: LinearGradient(
                 begin: Alignment.topRight,
                 end: Alignment.bottomLeft,
                 colors: color,
               ),

             ),
             child: Stack(
               children: [
                 Positioned(
                     top: 8,
                     left: 8,

                     child: Container(
                       height: 50,
                       width: 50,

                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15),
                         color: colorStack,
                       ),
                       child: Center(child: Icon(
                         icon, color: AppColors.mainText,
                         size: 20,)),
                     )
                 ),
                 Positioned(
                   bottom: 0,
                   left: 25,
                   child: Text(text,
                       style: GoogleFonts.actor(color: AppColors.mainText)),),
               ],
             ),

           ),
         ],
       )
     );
 }

 }
