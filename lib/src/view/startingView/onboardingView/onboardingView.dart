import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newproject/src/controller/assets/colors/appColors.dart';
import 'package:newproject/src/controller/assets/images/appImages.dart';
import 'package:newproject/src/controller/constants/widgets/buttons/inkwellbuttons.dart';
    class Onboardingview extends StatefulWidget {
      const Onboardingview({super.key});

      @override
      State<Onboardingview> createState() => _OnboardingviewState();
    }

    class _OnboardingviewState extends State<Onboardingview> {
      @override
      Widget build(BuildContext context) {
        return Scaffold(body:
          Center(child: Column(children: [
            Image.asset(Appimages.Start),

            SizedBox(height: 40,),
            Text('Start Manage Your Task With',style: GoogleFonts.jost(fontWeight: FontWeight.w500, fontSize:20),),
            Text('mtodo',style: GoogleFonts.jost(fontWeight: FontWeight.w500, fontSize:24,color: Color(0xff9BA3EB)),),

            SizedBox(height: 30,),
            CustomButton(text: 'Sign Up', backgroundColor:AppColors.lightBlue, textColor: Colors.white, onPressed:(){}),
SizedBox(height: 5,),
Row(mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text('Already have an account?',style: GoogleFonts.roboto(color: Color(0xff8D93AB),fontSize: 13),),
    Text('LOG IN',style: GoogleFonts.roboto(decoration: TextDecoration.underline,
        color: AppColors.lightBlue,fontWeight: FontWeight.w500),
    )
    
  ],
)

          ],),),
        );
      }
    }
