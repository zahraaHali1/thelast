import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../static/appcolor.dart';

class secondMainCategory extends StatefulWidget {

  final String image ;

  const secondMainCategory({
    required this.image
  });



  @override
  State<secondMainCategory> createState() => _secondMainCategoryState();
}

class _secondMainCategoryState extends State<secondMainCategory> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){

        Navigator.of(context).pop();
      } ,

      child:  Container(
        height: 400,
        decoration: BoxDecoration(

            image: DecorationImage(
              image: AssetImage(widget.image),
              fit: BoxFit.cover,
            )
        ),
        child: Stack(
          children: [
            Positioned(
              left: 30,
              top: 75,
              child:iconbottom(image: "playl", text: "Exclusive",color: AppColors.avatarActive,shadow: AppColors.darkPurple),

            ),
            Positioned(
              left: 30,
              top: 180,
              child:iconbottom(image: "game-boy", text: "Preorder",color:  AppColors.xboxTheme,shadow: AppColors.darkGreen),

            ),
            Positioned(
              left: 30,
              top: 285,
              child:iconbottom(image: "person", text: "+17 age",color:  AppColors.streamTheme,shadow: AppColors.darkRed),

            )

          ],
        ),
      ),
    );
  }

  Widget iconbottom (
      {
        required String image,
        required String text,
        required List<Color> color,
        required Color shadow ,
      }
      ){
    return Column(
      children: [
        Container(
            width: 70,
            height: 70,

            decoration: BoxDecoration(
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
                  blurRadius: 20,
                )
              ],

              borderRadius: BorderRadius.circular(35),
            ),
            child:Center(
              child: Image.asset("assets/images/$image.png",width: 40,height: 40,fit: BoxFit.cover,),

            )
        ),
        Text(text,style: GoogleFonts.abel(color: AppColors.mainText,fontSize: 18),),
      ],
    );
  }

}
