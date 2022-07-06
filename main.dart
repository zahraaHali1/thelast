import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:lastofus/screens/firstone/appBar.dart';
import 'package:lastofus/screens/firstone/body/featured.dart';
import 'package:lastofus/screens/firstone/body/maincategory.dart';
import 'package:lastofus/screens/firstone/body/related.dart';
import 'package:lastofus/static/appcolor.dart';

void main()
{
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {

          ("/"): (_)=> MainScreen(),
          // DetailsScreen.routeName: (_)=> DetailsScreen(),
        },
      )
  );
}


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainState();
}

class _MainState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundDark,
      body: SingleChildScrollView(
        child: Column(

            children: [
              Container(
                height: 300,
                padding: const EdgeInsets.only(top: 50.0,left: 20.0,right: 20.0),
                decoration: BoxDecoration(
                    gradient:LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors:AppColors.themeContainer,
                    )
                ),
                child: Column(
                  children: const [
                    AppBarMain(),
                    MainCategory(),
                  ],
                ),
              ),
              Feature(),
              //related
              Related(),



            ]),
      ),











      bottomNavigationBar:  CurvedNavigationBar(

          buttonBackgroundColor:AppColors.lightPurple,
          backgroundColor: AppColors.backgroundDark,
          color: AppColors.backgroundLight,
          items: [
            Icon(Icons.save,color: AppColors.secondaryText,),
            Icon(Icons.settings,color: AppColors.mainText,),
            Icon(Icons.home,color: AppColors.mainText,),
            Icon(Icons.shopping_cart,color: AppColors.mainText,),
            Icon(Icons.person,color: AppColors.mainText,),
          ]
      ),


    );
  }
}

