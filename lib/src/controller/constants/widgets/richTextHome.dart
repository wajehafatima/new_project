import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../assets/colors/appColors.dart';
class Richtexthome extends StatelessWidget {
  const Richtexthome({super.key});

  @override
  Widget build(BuildContext context) {
    return  RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'You have ',
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600,color: Colors.black),
          ),
          TextSpan(
            text: '5 tasks',
            style: GoogleFonts.jost(color: AppColors.darkBlue,
                fontSize: 24.sp, fontWeight: FontWeight.w600),
          ),
          TextSpan(
            text: ' today!',
            style: GoogleFonts.jost(fontSize: 20.sp,fontWeight: FontWeight.w600,color: Colors.black),
          ),
        ],
      ),
    );
  }
}
