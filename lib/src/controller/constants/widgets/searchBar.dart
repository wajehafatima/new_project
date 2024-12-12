import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Searchbar extends StatelessWidget {
  const Searchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(width: 280.w,
        height: 48.h,
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 4),
              blurRadius: 4,
              spreadRadius: 1,
            ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(12)
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'search here',
              icon: Icon(Icons.search),
              border: InputBorder.none,


            ),
          ),
        )
    );
  }
}
