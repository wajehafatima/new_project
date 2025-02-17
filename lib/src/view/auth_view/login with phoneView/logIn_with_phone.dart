import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../controller/assets/colors/appColors.dart';
class LoginWithPhone extends StatefulWidget {
  const LoginWithPhone({super.key});

  @override
  State<LoginWithPhone> createState() => _LoginWithPhoneState();
}

class _LoginWithPhoneState extends State<LoginWithPhone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
      Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        Padding(
        padding: const EdgeInsets.only(left: 8,top: 30),
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


    ])));
  }
}
