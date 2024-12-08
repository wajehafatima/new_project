
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
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: AppColors.darkBlue),
        backgroundColor: Colors.transparent,
        title: Text(
          'Today\'s Tasks',
          style: GoogleFonts.jost(
            color: AppColors.darkBlue,
            fontSize: 22.sp,
            fontWeight: FontWeight.w500
          ),
        ),
        centerTitle: true,
      ),
      body:
      SingleChildScrollView(
        child: GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
        
                  backgroundColor: Colors.transparent,
        
        
                  content: Column(
                    children: [
                      Center(
                        child: Container(
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
                                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [SizedBox(height: 10.h,),
                                        Text('Design Todo List',style: GoogleFonts.signika(fontSize:16.sp,fontWeight:FontWeight.w500
                                            ,color:Colors.black),),
        
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 5),
                                          child: Text('I shoud Design  todo list today, Tick the \ndone options.',style: GoogleFonts.signika(fontSize:12.sp,fontWeight:FontWeight.w300
                                              ,color:Colors.black),
                                            ),
                                        )
                                      ],
                                    ),
                                    Icon(Icons.star,color:Colors.orangeAccent,size: 35,)
                                  ],
                                ),
                                SizedBox(height: 20.h,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      Text('from',style:GoogleFonts.signika(fontSize: 16,color: Color(0xff888888)),),
                                      SizedBox(width: 5.w,),
                                      Container(
                                        height: 32.h,
                                        width: 97.w,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          border: Border.all(color:Color(0xff888888),  ),
                                        ),
                                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Column(
                                              children: [
                                                Icon(Icons.arrow_drop_up,color: Color(0xff888888),size: 12,),
        
                                                Text('08',style: GoogleFonts.signika(fontSize: 12.sp,
                                                    color: Color(0xff888888)),),
        
                                                Icon(Icons.arrow_drop_down,color: Color(0xff888888),size: 12,),
                                              ],
                                            ),
                                            SizedBox(width: 5.w,),
                                            Text(':',style: GoogleFonts.signika(fontSize: 14,fontWeight: FontWeight.w400,
                                                color: Color(0xff888888)),),
                                            SizedBox(width: 5.w,),
                                            Column(
                                              children: [
                                                Icon(Icons.arrow_drop_up,color: Color(0xff888888),size: 12,),
        
                                                Text('08',style: GoogleFonts.signika(fontSize: 12.sp,
                                                    color: Color(0xff888888)),),
        
                                                Icon(Icons.arrow_drop_down,color: Color(0xff888888),size: 12,),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 15.h,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 25),
                                  child: Row(
                                    children: [
                                      Text('till',style:GoogleFonts.signika(fontSize: 16,color: Color(0xff888888)),),
                                      SizedBox(width: 9.w,),
                                      Container(
                                        height: 32.h,
                                        width: 97.w,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          border: Border.all(color:Color(0xff888888),  ),
                                        ),
                                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Column(
                                              children: [
                                                Icon(Icons.arrow_drop_up,color: Color(0xff888888),size: 12,),
        
                                                Text('12',style: GoogleFonts.signika(fontSize: 12.sp,
                                                    color: Color(0xff888888)),),
        
                                                Icon(Icons.arrow_drop_down,color: Color(0xff888888),size: 12,),
                                              ],
                                            ),
                                            SizedBox(width: 5.w,),
                                            Text(':',style: GoogleFonts.signika(fontSize: 14,fontWeight: FontWeight.w400,
                                                color: Color(0xff888888)),),
                                            SizedBox(width: 5.w,),
                                            Column(
                                              children: [
                                                Icon(Icons.arrow_drop_up,color: Color(0xff888888),size: 12,),
        
                                                Text('10',style: GoogleFonts.signika(fontSize: 12.sp,
                                                    color: Color(0xff888888)),),
        
                                                Icon(Icons.arrow_drop_down,color: Color(0xff888888),size: 12,),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 40.h,),
                                Row(mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(onPressed:(){}, child: Text('Cancel',style: GoogleFonts.signika(color:AppColors.darkBlue,fontSize: 16.sp,fontWeight: FontWeight.w400),)),
                                    TextButton(onPressed:(){}, child: Text('Ok',style: GoogleFonts.signika(color:AppColors.darkBlue,fontSize: 16.sp,fontWeight: FontWeight.w400),)),
                                  ],
                                )
                              ],
                            )
        
        
                        ),
                      ),
        
        
        
        
                ])   );
              },
            );
          },
          child: Center(
            child: Column(
              children: [SizedBox(height: 30,),
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
                              'Design Todo list',
                              style: GoogleFonts.signika(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'I should design it today, tick the done options',
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
        
        
        SizedBox(height: 10.h,),
                Center(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: Colors.transparent,
                                content: Center(
                                  child: Container(
                                    width: 260.w,
                                    height: 232.h,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Column(
                                      children: [
                                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [SizedBox(height: 10.h,),
                                            Text('Design Todo List',style: GoogleFonts.signika(fontSize:16.sp,fontWeight:FontWeight.w500
                                                ,color:Colors.black),),
        
                                            Padding(
                                              padding: const EdgeInsets.only(left: 5,top: 5),
                                              child: Text('I shoud Design  todo list today, Tick the \ndone options.',style: GoogleFonts.signika(fontSize:12.sp,fontWeight:FontWeight.w300
                                                  ,color:Colors.black),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 20.h,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Row(
                                            children: [SizedBox(height: 20.h,),
                                              CircleAvatar(radius: 16.r, child: Icon(Icons.done)),
                                              SizedBox(width: 10),
                                              Text(
                                                'Fonts',
                                                style: GoogleFonts.signika(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Padding(
                                          padding: const EdgeInsets.only(left:20),
                                          child: Row(
                                            children: [
                                              CircleAvatar(radius: 16.r),
                                              SizedBox(width: 10),
                                              Text(
                                                'Color',
                                                style: GoogleFonts.signika(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(height:60),
                                        FloatingActionButton(onPressed: (){},child: Icon(Icons.add,color: Colors.white,),backgroundColor: AppColors.darkBlue,)
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          height: 144.h,
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
                                      '02:00',
                                      style: GoogleFonts.signika(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff888888),
                                      ),
                                    ),
                                    Text(
                                      '04:00',
                                      style: GoogleFonts.signika(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff888888),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // SizedBox(width: 20),
                              // Padding(
                              //   padding: const EdgeInsets.only(bottom: 90),
                              //   child: CircleAvatar(
                              //     radius: 15.r,
                              //     child: Icon(
                              //       Icons.done,
                              //       color: AppColors.darkBlue,
                              //       size: 25,
                              //     ),
                              //   ),
                              // ),
                              SizedBox(width: 20.w),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'new task',
                                      style: GoogleFonts.signika(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'the task should be added and mark tick when its done',
                                      style: TextStyle(fontSize: 12.sp),
                                    ),
                                    SizedBox(height: 10.h),
                                    Row(
                                      children: [
                                        CircleAvatar(radius: 12.r, child: Icon(Icons.done)),
                                        SizedBox(width: 10),
                                        Text(
                                          'Fonts',
                                          style: GoogleFonts.signika(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff888888),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        CircleAvatar(radius: 12.r),
                                        SizedBox(width: 10),
                                        Text(
                                          'Color',
                                          style: GoogleFonts.signika(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff888888),
                                          ),
                                        )
                                      ],
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
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h,),
        
                Center(
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
                              padding: const EdgeInsets.only(top: 20, left: 10,bottom: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '04:00',
                                    style: GoogleFonts.signika(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xff888888),
                                    ),
                                  ),
                                  Text(
                                    '06:00',
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
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: CircleAvatar(
                                radius: 15.r,
                                child: Icon(
                                  Icons.done,
                                  color: AppColors.darkBlue,
                                  size: 25,
                                ),
                              ),
                            ),
                            SizedBox(width: 20.w),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'new task',
                                    style: GoogleFonts.signika(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'the task should be added and mark tick when its done',
                                    style: TextStyle(fontSize: 12.sp),
                                  ),
                                  SizedBox(height: 10.h,),
                                  // Row(
                                  //   children: [
                                  //     CircleAvatar(radius: 12.r,
                                  //     child: Icon(Icons.done),),
                                  //     SizedBox(width: 10,),
                                  //     Text('Fonts',style: GoogleFonts.signika(fontSize: 16.sp,fontWeight: FontWeight.w500,
                                  //         color: Color(0xff888888)),)
                                  //   ],
                                  // ),
                                    SizedBox(height: 10,),
        
                                //   Row(
                                //     children: [
                                //       CircleAvatar(radius: 12.r),
                                //       SizedBox(width: 10,),
                                //     Text('Color',style: GoogleFonts.signika(fontSize: 16.sp,fontWeight: FontWeight.w500,
                                //           color: Color(0xff888888)),)
                                //
                                //
                                // ],
                                //   ),
                              ]),
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
                SizedBox(height: 80,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Divider(color: Color(0xff888888),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Done Tasks (6)',style: GoogleFonts.jost(fontSize: 16.sp,fontWeight: FontWeight.w500),
        
                          ),
                      Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
                SizedBox(height: 80.h),
                FloatingActionButton(onPressed: (){},child: Icon(Icons.add,color: Colors.white,),backgroundColor: AppColors.darkBlue,)
        
            ]  )
        
            )),
      ), );
  }
}

