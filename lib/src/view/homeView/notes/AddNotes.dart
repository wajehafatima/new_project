import 'dart:js_interop';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newproject/src/controller/constants/widgets/utils/utils.dart';

class Addnotes extends StatefulWidget {
  const Addnotes({super.key});

  @override
  State<Addnotes> createState() => _AddnotesState();
}

class _AddnotesState extends State<Addnotes> {
  final TextEditingController _notesController = TextEditingController();
  final _fireStore = FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFFFFE4E1),
      appBar: AppBar(

        elevation: 0,
        title: Text(
          "Add Note",
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              String id= DateTime.now().microsecondsSinceEpoch.toString();
              _fireStore.doc().set({
                'title': _notesController.toString(),
                'id': id
              }).then((value){
                Utils().toastMessage('Notes Added');
              }).onError((error, stackTrace){
                Utils().toastMessage(error.toString());
              });
            },
            child: Text(
              "SAVE",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.purple.shade500,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          /// Background Gradient
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFFFE4E1), // Light pastel pink
                  Color(0xFFB5EAD7), // Soft pastel green
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),


          Positioned(
            top: 20, // Adjusts position from the top
            left: 16,
            right: 16,
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9), // Slight transparency
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: TextFormField(
                controller: _notesController,
                maxLines: 3, // Restricting height
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: "Write your notes here...",
                  hintStyle: GoogleFonts.poppins(color: Colors.black54),
                  border: InputBorder.none,
                ),
                style: GoogleFonts.poppins(fontSize: 16, color: Colors.black87),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
