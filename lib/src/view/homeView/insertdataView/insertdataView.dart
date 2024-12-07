import 'package:flutter/material.dart';
class Insertdataview extends StatefulWidget {
  const Insertdataview({super.key});

  @override
  State<Insertdataview> createState() => _InsertdataviewState();
}

class _InsertdataviewState extends State<Insertdataview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 50,
              width: 280,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}








// Stack(
// children: [
// Container(
// height: MediaQuery.of(context).size.height * 0.3,
// decoration: BoxDecoration(
// color: Colors.white,
// borderRadius: BorderRadius.only(
// bottomLeft: Radius.circular(20),
// bottomRight: Radius.circular(20),
// ),
// ),
// ),
// Positioned(
// top: 0,
// left: 0,
// right: 0,
// child: Container(
// height: 50,
// width: 280,
// decoration: BoxDecoration(
// color: Colors.blue,
// borderRadius: BorderRadius.circular(10),
// ),
// ),
// ),
// ],
// )