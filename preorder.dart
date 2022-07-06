import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../static/appcolor.dart';


class preOrder extends StatelessWidget {
  const preOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Positioned(
        top: 700,
        left: 0,
        right: 0,
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors:AppColors.themeContainer,
            ),


          ),

          child: Stack(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(

                    children: [
                      Text("\$ ",style: TextStyle(color: AppColors.darkBlue),),
                      Text("120",
                          style: GoogleFonts.actor(color: AppColors.mainText,fontSize: 24)),
                      Container(
                        margin: EdgeInsets.only(left: 180),
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.bottomRight,
                              colors:AppColors.avatarActive,
                            )
                        ),

                        child: Stack(
                          children: [
                            Positioned(
                                left:8,
                                top: 8,
                                child: Text("Preorder",style: GoogleFonts.actor(color: AppColors.mainText,fontSize: 18),)
                            ),
                            Positioned(
                                right: 8,
                                top: 8,
                                child: Icon(Icons.arrow_forward,color: AppColors.mainText,size: 18,)),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

            ],
          ),
        )
    );
  }
}
