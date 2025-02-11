import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controller/assets/colors/appColors.dart';
import '../../controller/assets/images/appImages.dart';
import '../../controller/constants/widgets/customListTile.dart';
import '../../controller/constants/widgets/richTextHome.dart';
import '../../controller/constants/widgets/taskbox.dart';
import '../../controller/constants/widgets/timeButtons.dart';
import 'insertdataView/insertdataView.dart';
class Homeview extends StatefulWidget {
  const Homeview({super.key});

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBlue,


      drawer:  Drawer(
        child: Container(color: Colors.white,
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
                              color: AppColors.Grey,
                              fontSize: 10.h,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              CustomListTile(icon: Icons.edit, title: 'Edit profile'),
              CustomListTile(icon: Icons.edit_calendar_outlined, title: 'Daily tasks'),
              CustomListTile(icon: Icons.star, title: 'Important Tasks'),
              CustomListTile(icon:Icons.done_all, title: 'Done tasks'),
              CustomListTile(icon: Icons.logout, title: 'Logout',onTap: (){
                
              },)
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Gradient Background
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.darkBlue,
                    Colors.white,
                  ],
                ),
              ),
            ),

            // Content
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [SizedBox(height: 20.h,),
                  // First Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Builder(builder: (context){
                        return  IconButton(onPressed: (){
                          Scaffold.of(context).openDrawer();
                        }, icon: Icon(Icons.menu));
                      }),
                      Text(
                        'Mtodo Logo',
                        style: GoogleFonts.jost(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(Appimages.profie),
                      ),
                    ],
                  ),

                  // Add spacing below the Row
                  SizedBox(height: 30.h),

                  // RichTextHome Section
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Richtexthome(),

                      SizedBox(height: 10.h),
                      Text(
                        'Saturday, August 15, 2024',
                        style: GoogleFonts.jost(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

SizedBox(height: 10.h,),
                      SearchBar(),

          ]
        ),
                  SizedBox(height: 30.h,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Timebuttons(text: 'Today', onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Insertdataview()),
                        );
                      }),
                      Timebuttons(text: 'Week', onPressed: (){}),
                      Timebuttons(text: 'Monthly', onPressed: (){})
                    ],
                  ),
                  SizedBox(height: 30.h),
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

                  ),



      ]),
    )
          ]),
      )
    );
  }
}
