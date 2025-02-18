import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newproject/src/controller/assets/images/appImages.dart';
import 'package:newproject/src/controller/constants/widgets/buttons/inkwellbuttons.dart';
import 'package:newproject/src/controller/constants/widgets/g_fb_login.dart';
import 'package:newproject/src/controller/constants/widgets/textformField.dart';
import 'package:newproject/src/controller/constants/widgets/utils/utils.dart';
import 'package:newproject/src/view/homeView/homeView.dart';
import '../../../controller/assets/colors/appColors.dart';
import '../signupView/signupView.dart';

class Loginview extends StatefulWidget {
  const Loginview({super.key});

  @override
  State<Loginview> createState() => _LoginviewState();
}

class _LoginviewState extends State<Loginview> {
  bool _isLoading = false;
 final  auth=FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController= TextEditingController();
  TextEditingController passwordController= TextEditingController();
  void login(){
    setState(() {
      _isLoading== true;
    });
    auth.signInWithEmailAndPassword(email: emailController.text.toString(), password: passwordController.text.toString()).then((value){
      Navigator.push(context,MaterialPageRoute(builder:(context)=> Homeview()) );
      setState(() {
        _isLoading== false;
      });

    }).onError((error,stackTrace){
      Utils().toastMessage(error.toString());
      setState(() {
        _isLoading == false;
      });
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(onWillPop: ()async {
      SystemNavigator.pop();
      return true;
    },
      child: Scaffold(backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                'mtodo logo',
                style: GoogleFonts.jost(
                  fontWeight: FontWeight.w500,
                  fontSize: 24.sp,
                  color: Color(0xff9BA3EB),
                ),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Text(
                'Hello Again!',
                style: GoogleFonts.jost(
                  fontSize: 24.sp,
                  color: Color(0xff9BA3EB),
                ),
              ),
            ),
            Center(
              child: Text(
                'Welcome Back',
                style: GoogleFonts.jost(
                  fontSize: 16.sp,
                  color:   Color(0xff9BA3EB),
                ),
              ),
            ),
            SizedBox(height: 20.h),
             Form(key: _formKey,
                 child: Column(children: [
             CustomTextField(hintText: 'Enter your Email',controller: emailController,
             validator: (value){
               if (value!.isEmpty){
                 return 'Enter Email';

               }
               return null;

             },),
             CustomTextField(hintText: 'Enter Password', isPassword: true,controller: passwordController,
             validator: (value){
               if (value!.isEmpty){
                 return 'Enter Password';
               }
               return null;
             },),
            ]),),
            SizedBox(height: 30.h),          _isLoading
                ?  Center(
              child:  CircularProgressIndicator(),
            )
                : CustomButton(
              text: 'Log In',
              backgroundColor: AppColors.darkBlue,

              textColor: Colors.white,
              onPressed: () {if(_formKey.currentState!.validate()){
                login();
              }
    }




            ),
            SizedBox(height: 20.h),
            Center(
              child: Text(
                'Or Continue With',
                style: GoogleFonts.jost(
                  color:  AppColors.Grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                ),
              ),
            ),
            SizedBox(height: 20.h),
             const FbGoogle(),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a Member?',
                  style: GoogleFonts.roboto(
                    color: AppColors.Grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 13.sp,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Signupview()),
                    );
                  },
                  child: Center(
                    child: Text(
                      'Register now',
                      style: GoogleFonts.roboto(
                        color: AppColors.darkBlue,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}