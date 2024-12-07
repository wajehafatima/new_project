
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../controller/assets/colors/appColors.dart';

class Insertdataview extends StatefulWidget {
  const Insertdataview({super.key});

  @override
  State<Insertdataview> createState() => _InsertdataviewState();
}

class _InsertdataviewState extends State<Insertdataview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: AppColors.darkBlue),
        backgroundColor: Colors.transparent,
        title: Text(
          'Today\'s Tasks',
          style: GoogleFonts.jost(
            color: AppColors.darkBlue,
            fontSize: 22.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                contentPadding: EdgeInsets.zero,
                backgroundColor: Colors.transparent,
                elevation: 0,
                content: Container(
                    width: 260.w,
                    height: 232.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Design Todo List',style: GoogleFonts.signika(fontSize:16.sp,fontWeight:FontWeight.w500
                                    ,color:Colors.black),),

                                Padding(
                                  padding: const EdgeInsets.only(left: 10,top: 5),
                                  child: Text('I shoud Design  todo list today,Tick the \ndone options.',style: GoogleFonts.signika(fontSize:12.sp,fontWeight:FontWeight.w300
                                      ,color:Colors.black),
                                    ),
                                )
                              ],
                            ),
                            Icon(Icons.star,color:Colors.orangeAccent,size: 35,)
                          ],
                        ),
                        Row(
                          children: [
                            Text('From'),
                            Container(
                              height: 32.h,
                              width: 97.w,
                              decoration: BoxDecoration(
                                borderRadius: 
                              ),
                            )
                          ],
                        )
                      ],
                    )


                ),
              );
            },
          );
        },
        child: Center(
          child: Column(
            children: [
              Container(
                height: 69.h,
                width: 328.w,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: AppColors.darkBlue),
                  borderRadius: BorderRadius.circular(16.r),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '10:00',
                            style: GoogleFonts.signika(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff888888),
                            ),
                          ),
                          Text(
                            '12:00',
                            style: GoogleFonts.signika(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff888888),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    CircleAvatar(
                      radius: 15.r,
                      child: Icon(
                        Icons.done,
                        color: AppColors.darkBlue,
                        size: 25,
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'This is a sample text',
                            style: GoogleFonts.signika(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'This is a sample subtext',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.more_vert),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )

    );
  }
}

