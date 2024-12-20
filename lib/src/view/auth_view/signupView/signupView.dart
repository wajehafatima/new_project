
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newproject/src/controller/constants/widgets/alreadyAccount.dart';
import 'package:newproject/src/controller/constants/widgets/buttons/inkwellbuttons.dart';
import 'package:newproject/src/controller/constants/widgets/buttons/textButton.dart';
import 'package:newproject/src/controller/constants/widgets/textformField.dart';
import 'package:newproject/src/view/auth_view/loginView/loginView.dart';
import '../../../controller/assets/colors/appColors.dart';

class Signupview extends StatefulWidget {
  const Signupview({super.key});

  @override
  State<Signupview> createState() => _SignupviewState();
}

class _SignupviewState extends State<Signupview> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                'mtodo Logo',
                style: GoogleFonts.jost(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  color: AppColors.darkBlue
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Center(
                child: Text(
                  'Hello!',
                  style: GoogleFonts.jost(
                    fontWeight: FontWeight.w500,
                    fontSize: 24.sp,
                    color:AppColors.darkBlue
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                'welcome to Mtodo app',
                style: GoogleFonts.jost(
                  fontSize: 16.sp,
                  color: Color(0xff9BA3EB),
                ),
              ),
            ),
            Center(
              child: Text(
                'Sign up to get started',
                style: GoogleFonts.jost(
                  fontSize: 16.sp,
                  color: Color(0xff9BA3EB),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            CustomTextField(hintText: 'Your name'),
            CustomTextField(hintText: 'Enter Email'),
            CustomTextField(hintText: 'password', isPassword: true),
            CustomTextbutton(),
            SizedBox(height: 30.h),
            _isLoading
                ? Center(
              child: CircularProgressIndicator(),
            )
                : CustomButton(
              text: 'Sign Up',
              backgroundColor: AppColors.darkBlue,
              textColor: Colors.white,
              onPressed: () {
                setState(() {
                  _isLoading = true;
                });
                // TODO: Sign up functionality
                Future.delayed(Duration(seconds: 5), () {
                  setState(() {
                    _isLoading = false;
                  });
                });
              },
            ),
            SizedBox(height: 10.h),
            Alreadyaccount(),
          ],
        ),
      ),
    );
  }
}