import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../assets/colors/appColors.dart';

class Timebuttons extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const Timebuttons({Key? key, required this.text, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 27.h,
      width: 71.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.darkBlue),
      ),
      child: Center(
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: GoogleFonts.jost(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColors.Grey
            ),
          ),
        ),
      ),
    );
  }
}
