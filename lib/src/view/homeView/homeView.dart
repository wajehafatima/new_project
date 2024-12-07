import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newproject/src/controller/assets/colors/appColors.dart';
import 'package:newproject/src/controller/constants/widgets/customAppBar.dart';

import '../../controller/assets/images/appImages.dart';
class Homeview extends StatefulWidget {
  const Homeview({super.key});

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mtodo Logo',style: GoogleFonts.jost(color:
        AppColors.darkBlue,fontSize: 24.sp,fontWeight: FontWeight.w500),),
        centerTitle: true,
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage(Appimages.profie),
          ),
        ],

      ),

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            AppColors.darkBlue,

            Colors.white
          ])
        ),
      ),
   );
  }}