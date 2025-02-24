

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newproject/src/controller/constants/widgets/utils/utils.dart';
import 'package:newproject/src/view/homeView/notes/notesView.dart';

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
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Notesview()),
                );
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

          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFFFE4E1),
                  Color(0xFFB5EAD7),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),


          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.9),
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
              
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                hintText: "Write your notes here...",
                hintStyle: GoogleFonts.poppins(color: Colors.black54),
                border: InputBorder.none,
              ),
              style: GoogleFonts.poppins(fontSize: 16, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
