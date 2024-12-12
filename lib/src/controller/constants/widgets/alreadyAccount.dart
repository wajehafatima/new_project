import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../view/auth_view/loginView/loginView.dart';
import '../../assets/colors/appColors.dart';
class Alreadyaccount extends StatelessWidget {
  const Alreadyaccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account?',
          style: GoogleFonts.roboto(
            color: Color(0xff8D93AB),
            fontSize: 13.sp,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Loginview()),
            );
          },
          child: Text(
            'LOG IN',
            style: GoogleFonts.roboto(
              decoration: TextDecoration.underline,
              color: AppColors.lightBlue,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
