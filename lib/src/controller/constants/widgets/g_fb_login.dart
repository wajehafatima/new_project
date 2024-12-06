import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../assets/colors/appColors.dart';
import '../../assets/images/appImages.dart';
class FbGoogle extends StatefulWidget {
  const FbGoogle({super.key});

  @override
  State<FbGoogle> createState() => _FbGoogleState();
}

class _FbGoogleState extends State<FbGoogle> {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(height: 48,
          width: 154,
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xff888888)),
              borderRadius: BorderRadius.circular(12)

          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Appimages.google,width: 24,height: 24,),
              SizedBox(width: 10,),
              Text('Google',style: GoogleFonts.roboto(color: Color(0xff888888),fontWeight: FontWeight.w400,fontSize: 14),),

            ],
          ),),
        SizedBox(width: 20,),
        Container(height: 48,
          width: 154,
          decoration: BoxDecoration(color:AppColors.darkBlue,

              borderRadius: BorderRadius.circular(12)

          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Appimages.fbLogo,width: 24,height: 24,),
              SizedBox(width: 10,),
              Text('Facebook',style: GoogleFonts.roboto(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 14),),

            ],
          ),),

      ],);
  }
}
