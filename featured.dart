import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../static/appcolor.dart';
import '../../secondone/first.dart';




class Feature extends StatefulWidget {
  const Feature({Key? key}) : super(key: key);

  @override
  State<Feature> createState() => _FeatureState();
}

class _FeatureState extends State<Feature> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20.0,top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Featured",style: GoogleFonts.aBeeZee(color: AppColors.secondaryText,fontSize: 22,),),
            const SizedBox(height: 20),
            Container(
              height: 220,

              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [

                  picBox(
                      text : "The last of Us 2",
                      pic: "assets/images/f_1.jpeg",
                      clr : AppColors.avatarActive
                  ),
                  picBox(
                      text : "The last of Us 2",
                      pic: "assets/images/f_1.jpeg",
                      clr : AppColors.avatarActive
                  ),




                ],
              ),
            ),

          ],
        )
    );
  }

  Widget picBox ({
    required String pic,
    required List<Color> clr,
    required String text ,
  }
      ){
    return
      GestureDetector(
        onTap: (){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder:(_)=> DetailsScreen(
              image: pic
          ),
        ),
      );
    },


   child:   Container(
        height: 220,
        width: 280,

        child: Stack(
          children: [
            Positioned(
                top: 0,
                left: 0,
                child:Container(
                  width: 240,
                  height: 220,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image:NetworkImage(pic),
                        fit: BoxFit.cover,
                      )
                  ),
                )


            ),
            Positioned(
                top: 50,
                right: 0,
                child:Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin:Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: clr,
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15,left: 10,right: 5,bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(text,style: GoogleFonts.rubik(color: AppColors.mainText,fontSize: 14,),),
                        const SizedBox(height: 5),
                        Text('Ps4 exclusive',style: GoogleFonts.rubik(color: AppColors.mainText,fontSize: 10,),),
                        const SizedBox(height: 30),
                        Center(
                          child: Container(
                            width: 100,
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
                            child: Center(child: Text('Preorder',style: GoogleFonts.balooBhai2(color: AppColors.darkBlue,fontSize: 18),)),
                          ),
                        )
                      ],
                    ),
                  ),

                )


            )
          ],
        ),
   )
      );
  }
}