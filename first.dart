
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lastofus/screens/edition.dart';
import 'package:lastofus/screens/secondone/preorder.dart';

import '../../static/appcolor.dart';
import 'choosenpart.dart';
import 'traillerpart.dart';
import 'category.dart';



class DetailsScreen extends StatefulWidget {
  static String routeName = '/DetailsScreen';

  final String image ;
  const DetailsScreen({
    required this.image
  });

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: AppColors.backgroundDark,
        body: SingleChildScrollView (

          child: Column(
          children: [
           Container(
             height:800,
             child: Stack(
               children: [
                 //first part
                 secondMainCategory(image: (widget.image),),
                 //second part
                 trailer(),

                 //third part
                 choosen(),
                //fourth part
                 preOrder(),
               ],
             ),
           )

          ],
        )
        )


    );
  }










}
