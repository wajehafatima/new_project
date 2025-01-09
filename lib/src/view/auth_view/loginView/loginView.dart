import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newproject/src/controller/assets/images/appImages.dart';
import 'package:newproject/src/controller/constants/widgets/buttons/inkwellbuttons.dart';
import 'package:newproject/src/controller/constants/widgets/g_fb_login.dart';
import 'package:newproject/src/controller/constants/widgets/textformField.dart';
import 'package:newproject/src/view/homeView/homeView.dart';
import '../../../controller/assets/colors/appColors.dart';
import '../signupView/signupView.dart';

class Loginview extends StatefulWidget {
  const Loginview({super.key});

  @override
  State<Loginview> createState() => _LoginviewState();
}

class _LoginviewState extends State<Loginview> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              'mtodo logo',
              style: GoogleFonts.jost(
                fontWeight: FontWeight.w500,
                fontSize: 24.sp,
                color: Color(0xff9BA3EB),
              ),
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: Text(
              'Hello Again!',
              style: GoogleFonts.jost(
                fontSize: 24.sp,
                color: Color(0xff9BA3EB),
              ),
            ),
          ),
          Center(
            child: Text(
              'Welcome Back',
              style: GoogleFonts.jost(
                fontSize: 16.sp,
                color:  const Color(0xff9BA3EB),
              ),
            ),
          ),
          SizedBox(height: 20.h),
           CustomTextField(hintText: 'Enter your Email'),
           CustomTextField(hintText: 'Enter Password', isPassword: true),
          SizedBox(height: 30.h),
          _isLoading
              ?const  Center(
            child:  CircularProgressIndicator(),
          )
              : CustomButton(
            text: 'Log In',
            backgroundColor: AppColors.darkBlue,

            textColor: Colors.white,
            onPressed: () {Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> Homeview()));
              setState(() {
                _isLoading = true;
              });
              // TODO: Login functionality
              Future.delayed(Duration(seconds: 5), () {
                setState(() {
                  _isLoading = false;
                });
              });

            },
          ),
          SizedBox(height: 20.h),
          Center(
            child: Text(
              'Or Continue With',
              style: GoogleFonts.jost(
                color:  AppColors.Grey,
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
              ),
            ),
          ),
          SizedBox(height: 20.h),
           const FbGoogle(),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Not a Member?',
                style: GoogleFonts.roboto(
                  color: AppColors.Grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 13.sp,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Signupview()),
                  );
                },
                child: Center(
                  child: Text(
                    'Register now',
                    style: GoogleFonts.roboto(
                      color: AppColors.darkBlue,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}