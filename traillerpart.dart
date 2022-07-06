
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../static/appcolor.dart';

class trailer extends StatelessWidget {
  const trailer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 380,
      left: 0,
      right: 0,
      child: Container(
        height: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: AppColors.avatarActive,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 30,top: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("The Last Of US 2",style: GoogleFonts.rubik(color: AppColors.mainText,fontSize: 20,),),
                  const SizedBox(height: 5),
                  Text('Available: 19.06.2020',style: GoogleFonts.rubik(color: AppColors.mainText,fontSize: 14,),),
                  const SizedBox(height: 30),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(right: 30),
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(1,1),
                          color: AppColors.lightPurple,
                          spreadRadius: 5,
                          blurRadius: 10,
                        )
                      ]
                  ),
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10,bottom: 10,left: 20),
                            child: Text('Trailer',style: GoogleFonts.balooBhai2(color: AppColors.darkBlue,fontSize: 14)),
                          ) ,
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(

                              height: 30,
                              width:30 ,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient:  LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: AppColors.avatarActive,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Center(child: Icon(Icons.play_arrow,color: AppColors.mainText,size: 20,)),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),

                    ],

                  )
              ),

            ],
          ),
        ),

      ),
    );
  }
}
