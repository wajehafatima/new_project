import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newproject/src/controller/constants/widgets/buttons/inkwellbuttons.dart';
import 'package:newproject/src/controller/constants/widgets/buttons/textButton.dart';
import 'package:newproject/src/controller/constants/widgets/textformField.dart';

import '../../../controller/assets/colors/appColors.dart';
class Signupview extends StatefulWidget {
  const Signupview({super.key});

  @override
  State<Signupview> createState() => _SignupviewState();
}

class _SignupviewState extends State<Signupview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Padding(
  padding: const EdgeInsets.only(top: 50),
  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Text('mtodo Logo',style: GoogleFonts.jost(fontWeight: FontWeight.w500, fontSize:20.sp,color: Color(0xff9BA3EB)),),
    ),
    SizedBox(height: 30.h,),
    Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Center(child: Text('Hello!',style: GoogleFonts.jost(fontWeight: FontWeight.w500, fontSize:24.sp,color: Color(0xff9BA3EB)),)),
    ),
    Center(child: Text('welcome to Mtodo app',style: GoogleFonts.jost( fontSize:16.sp,color: Color(0xff9BA3EB)),)),
    Center(child: Text('Sign up to get started',style: GoogleFonts.jost( fontSize:16.sp,color: Color(0xff9BA3EB)),)),
  SizedBox(height: 20.h,),
      CustomTextField(hintText: 'Your name'),
      CustomTextField(hintText: 'Enter Email'),
      CustomTextField(hintText: 'password',isPassword: true,),
      CustomTextbutton(),
      SizedBox(height: 30.h,),
      CustomButton(text: 'Sign Up', backgroundColor:AppColors.darkBlue, textColor:Colors.white, onPressed:(){

      }),
      SizedBox(height: 10.h,),
      Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Already have an account?',style: GoogleFonts.roboto(color: Color(0xff8D93AB),fontSize: 13.sp),),
          TextButton(onPressed: (){

          },
            child: Text('LOG IN',style: GoogleFonts.roboto(decoration: TextDecoration.underline,
                color: AppColors.lightBlue,fontWeight: FontWeight.w500),
            ),
          )

        ],
      )



    ],),
),
    );
  }
}
