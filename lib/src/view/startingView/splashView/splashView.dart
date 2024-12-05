import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newproject/src/controller/assets/images/appImages.dart';
import 'package:newproject/src/controller/constants/widgets/buttons/inkwellbuttons.dart';
import 'package:newproject/src/view/auth_view/signupView/signupView.dart';
import 'package:newproject/src/view/startingView/onboardingView/onboardingView.dart';

import '../../../controller/assets/colors/appColors.dart';
class Splashview extends StatefulWidget {
  const Splashview({super.key});

  @override
  State<Splashview> createState() => _SplashviewState();
}

class _SplashviewState extends State<Splashview> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(
        seconds: 7
    ),(){
      Navigator.push(context,MaterialPageRoute(builder: (context)=> Onboardingview()));


    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
        Image.asset(Appimages.SplashLogoImage),
          SizedBox(height: 40,),
          Text('Manage your Tasks',style: GoogleFonts.jost(fontWeight: FontWeight.w500, fontSize:24),),
        Container(height: 85,
        width: 285,
          child: Text('organize, plan, and collaborate on tasks with Mtodo.Your busy life deserves this.you can \nmanage checklist and your goal. ',style: GoogleFonts.roboto(color: Color(0xff8D93AB),fontSize: 12,fontWeight: FontWeight.w400),),
        ),
          SizedBox(height: 40,),

        CustomButton(text:'Get Started', backgroundColor:AppColors.lightBlue, textColor:Colors.white, onPressed: (){})


        ],),
      ),
    );
  }
}
