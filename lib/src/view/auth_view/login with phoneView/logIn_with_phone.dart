import 'dart:js_interop';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:country_picker/country_picker.dart';
import 'package:newproject/src/controller/constants/widgets/buttons/inkwellbuttons.dart';
import 'package:newproject/src/controller/constants/widgets/utils/utils.dart';
import 'package:newproject/src/view/auth_view/login%20with%20phoneView/verify_codeView.dart';

import '../../../controller/assets/colors/appColors.dart';

class LoginWithPhone extends StatefulWidget {
  const LoginWithPhone({super.key});

  @override
  State<LoginWithPhone> createState() => _LoginWithPhoneState();
}

class _LoginWithPhoneState extends State<LoginWithPhone> {
  TextEditingController _phoneController = TextEditingController();
  Country? _selectedCountry;
bool isLoading= false;
final Auth= FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo Text
            Padding(
              padding: const EdgeInsets.only(left: 8, ),
              child: Text(
                'mtodo Logo',
                style: GoogleFonts.jost(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  color: AppColors.darkBlue,
                ),
              ),
            ),
            SizedBox(height: 30.h),

            // Country Picker and Phone Input
            GestureDetector(
              onTap: () {
                showCountryPicker(
                  context: context,
                  showPhoneCode: true,
                  onSelect: (Country country) {
                    setState(() {
                      _selectedCountry = country;
                    });
                  },
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  children: [
                    Text(
                      _selectedCountry != null
                          ? "+${_selectedCountry!.phoneCode} ${_selectedCountry!.flagEmoji}"
                          : "Select Country",
                      style: TextStyle(fontSize: 16.sp),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h),


            TextField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
               hintText: 'Phone number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
            ),
            SizedBox(height: 30.h,),
            CustomButton(text: 'Login', backgroundColor: AppColors.darkBlue, textColor: Colors.white,
                onPressed:(){
              Auth.verifyPhoneNumber(
                phoneNumber: _phoneController.text,
                  verificationCompleted:(_){},
                  verificationFailed: (e){
                  Utils().toastMessage(e.toString());
                  },
                  codeSent: (String verificationId, int? token){
                    Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) => VerifyCodeview(verificationId: verificationId,)));
                  },
                  codeAutoRetrievalTimeout:(e){
                  Utils().toastMessage(e.toString());
                  } );
            })
          ],
        ),
      ),
    );
  }
}
