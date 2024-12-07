import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newproject/src/controller/assets/colors/appColors.dart';
import 'package:newproject/src/controller/assets/images/appImages.dart';
import 'package:newproject/src/controller/constants/widgets/buttons/inkwellbuttons.dart';
import 'package:newproject/src/view/auth_view/signupView/signupView.dart';
    class Onboardingview extends StatefulWidget {
      const Onboardingview({super.key});

      @override
      State<Onboardingview> createState() => _OnboardingviewState();
    }

    class _OnboardingviewState extends State<Onboardingview> {
      @override
      Widget build(BuildContext context) {
        return Scaffold(body:
          Center(child: Padding(
            padding: const EdgeInsets.only(top: 130),
            child: Column(children: [
              Image.asset(Appimages.Start),

              SizedBox(height: 40.h,),
              Text('Start Manage Your Task With',style: GoogleFonts.jost(fontWeight: FontWeight.w500, fontSize:20.sp),),
              Text('mtodo',style: GoogleFonts.jost(fontWeight: FontWeight.w500, fontSize:24.sp,color: Color(0xff9BA3EB)),),

              SizedBox(height: 30.h,),
              CustomButton(text: 'Sign Up', backgroundColor:AppColors.lightBlue, textColor: Colors.white, onPressed:(){
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> Signupview()));
              }),
            SizedBox(height: 5.h,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account?',style: GoogleFonts.roboto(color: Color(0xff8D93AB),fontSize: 13.sp),),
                Text('LOG IN',style: GoogleFonts.roboto(decoration: TextDecoration.underline,
                    color: AppColors.lightBlue,fontWeight: FontWeight.w500),
                )

              ],
            )

            ],),
          ),),
        );
      }
    }
