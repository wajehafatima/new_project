import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newproject/src/controller/assets/colors/appColors.dart';

import 'package:newproject/src/controller/constants/widgets/customAppBar.dart';
import 'package:newproject/src/controller/constants/widgets/taskbox.dart';
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
        backgroundColor: Colors.transparent,
        title: Text(
          'Mtodo Logo',
          style: GoogleFonts.jost(
            color: AppColors.darkBlue,
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundImage: AssetImage(Appimages.profie),
            ),
          ),
        ],
      ),


       drawer:  Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(Appimages.profie),
                    ),
                    SizedBox(width: 10.h),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hey Wajeha',
                          style: TextStyle(
                              color: AppColors.darkBlue,
                              fontSize: 14.h,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                        Text(
                          'wajehafatima92@gmail.com',
                          style: TextStyle(
                              color: Color(0xff888888),
                              fontSize: 10.h,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.edit_outlined,color: Color(0xff8888888),),
                title: Text(
                  'Edit profile',
                  style: GoogleFonts.jost(color: Color(0xFF888888),fontSize: 12.sp,fontWeight: FontWeight.w400)
                  ,
                ),
              ),
              ListTile(leading: Icon(Icons.edit_calendar_outlined),
                title: Text(
                  'Daily Tasks',
                  style: GoogleFonts.jost(color: Color(0xFF888888),fontSize: 12.sp,fontWeight: FontWeight.w400),
                ),
              ),
              ListTile(
                leading: Icon(Icons.star,color: Color(0xff8888888),),
                title: Text(
                  'Important Tasks',
                  style: GoogleFonts.jost(color: Color(0xFF888888),fontSize: 12.sp,fontWeight: FontWeight.w400)
                  ,
                ),
              ),
              ListTile(
                leading: Icon(Icons.done_all,color: Color(0xff8888888),),
                title: Text(
                  'Done Tasks',
                  style: GoogleFonts.jost(color: Color(0xFF888888),fontSize: 12.sp,fontWeight: FontWeight.w400)
                  ,
                ),
              ),
            ],
          ),
        ),

      body:
      SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
SizedBox(height: 30.h,),
            Column(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
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
                ),
                SizedBox(height: 10.h,),
                Text('Saturday,september 10,2022',
                style: GoogleFonts.jost(fontSize: 12.sp,fontWeight: FontWeight.w500),)
              ],
            ),
        SizedBox(height: 15.h),


Center(
  child: Container(
    height: 48,
    width: 280,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [BoxShadow(
        blurRadius: 4.r,
        color: Color(0xff888888)
      ),],
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 15),
      child: TextFormField(
        decoration: InputDecoration(
          icon: Icon(Icons.search,color: Color(0xff888888),),
          hintText: 'Search Tasks',hintStyle: GoogleFonts.jost(fontWeight: FontWeight.w300,fontSize: 16),
          border: InputBorder.none,
        ),

      ),
    ),
  ),
),
            SizedBox(height: 50,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 27.h,
                  width: 71.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: AppColors.darkBlue)
                  ),
                  child: Center(child: Text('Today',style: GoogleFonts.jost(fontSize: 16,fontWeight: FontWeight.w500,
                    color: Color(0xff888888),
                  ),),),
                ),
                Container(
                  height: 27.h,
                  width: 71.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: AppColors.darkBlue)
                  ),
                  child: Center(child: Text('Week',style: GoogleFonts.jost(fontSize: 16,fontWeight: FontWeight.w500,
                    color: Color(0xff888888),
                  ),),),
                ),
                Container(
                  height: 27.h,
                  width: 71.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: AppColors.darkBlue)
                  ),
                  child: Center(child: Text('Month',style: GoogleFonts.jost(fontSize: 16,fontWeight: FontWeight.w500,
                    color: Color(0xff888888),
                  ),),),
                ),
              ],
            ),

SizedBox(height: 30,),
            Wrap(
              children: [
               Taskbox(backgroundColor: Color(0xff2A8899), imagePath: Appimages.school,
                   title: 'School', countText: '7', titleColor: Colors.white),
              Taskbox(backgroundColor: Color(0xff5EB0D2), imagePath: Appimages.work,
                  title: 'Work', countText: '6', titleColor:Colors.white),
                Taskbox(backgroundColor: Color(0xffBE8972), imagePath: Appimages.shop, title: 'Shop',
                    countText: '3', titleColor: Colors.white),
                Taskbox(backgroundColor: Color(0xff646FD4), imagePath: Appimages.read, title: 'Read', countText: '4', titleColor: Colors.white),
                Taskbox(backgroundColor: Color(0xff83BC74), imagePath: Appimages.health, title:'Workout', countText: '1', titleColor: Colors.white)
,
              Taskbox(backgroundColor: Color(0xffffe8e8), imagePath: Appimages.add, title: '', countText: '', titleColor: Colors.white)],
              
            )

       ]),
              ));
  }
}

