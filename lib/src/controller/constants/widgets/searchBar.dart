import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../assets/colors/appColors.dart';
class Searchbar extends StatelessWidget {
  const Searchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 48,
        width: 280,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(
              blurRadius: 4.r,
              color: AppColors.Grey
          ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.search, color: AppColors.Grey,),
              hintText: 'Search Tasks',
              hintStyle: GoogleFonts.jost(
                  fontWeight: FontWeight.w300, fontSize: 16),
              border: InputBorder.none,
            ),

          ),
        ),
      ),
    );
  }
}