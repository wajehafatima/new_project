import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newproject/src/controller/assets/images/appImages.dart';
import 'package:newproject/src/controller/constants/widgets/buttons/inkwellbuttons.dart';
import 'package:newproject/src/view/auth_view/loginView/loginView.dart';
import 'package:newproject/src/view/auth_view/signupView/signupView.dart';
import 'package:newproject/src/view/homeView/homeView.dart';
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
    super.initState();


    Future.delayed(Duration(seconds: 3), () {
      islogin();
    });
  }
  islogin()
  {
    final auth = FirebaseAuth.instance;
    User? user;
    user = auth.currentUser;
    if (user != null) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Homeview()));
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Onboardingview()));
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 110),
          child: Column(children: [
            Image.asset(Appimages.SplashLogoImage),
            SizedBox(height: 40.h,),
            Text('Manage your Tasks', style: GoogleFonts.jost(
                fontWeight: FontWeight.w500, fontSize: 24.sp),),
            Container(height: 85.h,
              width: 285.w,
              child: Text(
                'organize, plan, and collaborate on tasks with Mtodo.Your busy life deserves this.you can manage checklist and your goal. ',
                style: GoogleFonts.roboto(color: Color(0xff8D93AB),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400),),
            ),
            SizedBox(height: 40.h,),

            CustomButton(text: 'Get Started',
                backgroundColor: AppColors.lightBlue,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) => Onboardingview()));
                })


          ],),
        ),
      ),
    );
  }
}