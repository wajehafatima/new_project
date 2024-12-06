import 'package:flutter/material.dart';
import 'package:newproject/src/controller/assets/colors/appColors.dart';
class Homeview extends StatefulWidget {
  const Homeview({super.key});

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 300,
            width: 180,
            decoration: BoxDecoration(
              color: AppColors.darkBlue,
              borderRadius: BorderRadius.only(t)
            ),
          )
        ],
      ),
    );
  }
}
