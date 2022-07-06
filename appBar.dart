import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../static/appcolor.dart';

class AppBarMain extends StatelessWidget {
  const AppBarMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Good Morning",style:GoogleFonts.abel(fontSize: 22,color: AppColors.mainText,fontWeight: FontWeight.bold)),
            SizedBox(height: 4,),
            Text("Elli",style:GoogleFonts.arsenal(fontSize: 14,color: AppColors.mainText,fontWeight: FontWeight.bold))
          ],
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),

              image: DecorationImage(
                image: AssetImage("assets/images/logo.jpg"),
                fit: BoxFit.cover,

              )
          ),
          child: Stack(
            children: [
              Positioned(
                  bottom: 0.0,
                  right: 0.0,
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.5),
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: AppColors.avatarActive
                        )
                    ),
                  ))
            ],
          ),
        )
      ],
    );
  }
}
