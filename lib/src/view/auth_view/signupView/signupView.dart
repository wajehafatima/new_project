
import 'package:firebase_auth/firebase_auth.dart';
<<<<<<< Updated upstream
<<<<<<< Updated upstream
import 'package:firebase_core/firebase_core.dart';
=======
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newproject/src/controller/constants/widgets/alreadyAccount.dart';
import 'package:newproject/src/controller/constants/widgets/buttons/inkwellbuttons.dart';
import 'package:newproject/src/controller/constants/widgets/buttons/textButton.dart';
import 'package:newproject/src/controller/constants/widgets/textformField.dart';
import 'package:newproject/src/view/auth_view/loginView/loginView.dart';
import '../../../controller/assets/colors/appColors.dart';

class Signupview extends StatefulWidget {
  const Signupview({super.key});

  @override
  State<Signupview> createState() => _SignupviewState();
}

class _SignupviewState extends State<Signupview> {
  bool _isLoading = false;
<<<<<<< Updated upstream
<<<<<<< Updated upstream
  TextEditingController emailController= TextEditingController();
  TextEditingController passwordController= TextEditingController();
=======
=======
>>>>>>> Stashed changes
  TextEditingController emailContriller=TextEditingController();
  TextEditingController passwordContriller=TextEditingController();

>>>>>>> Stashed changes
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                'mtodo Logo',
                style: GoogleFonts.jost(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  color: AppColors.darkBlue
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Center(
                child: Text(
                  'Hello!',
                  style: GoogleFonts.jost(
                    fontWeight: FontWeight.w500,
                    fontSize: 24.sp,
                    color:AppColors.darkBlue
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                'welcome to Mtodo app',
                style: GoogleFonts.jost(
                  fontSize: 16.sp,
                  color: Color(0xff9BA3EB),
                ),
              ),
            ),
            Center(
              child: Text(
                'Sign up to get started',
                style: GoogleFonts.jost(
                  fontSize: 16.sp,
                  color: Color(0xff9BA3EB),
                ),
              ),
            ),
            SizedBox(height: 20.h),
<<<<<<< Updated upstream
<<<<<<< Updated upstream
            //CustomTextField(hintText: 'Your name'),
            CustomTextField(hintText: 'Enter Email',controller: emailController,),
            CustomTextField(hintText: 'password', isPassword: true,controller: passwordController,),
            CustomTextbutton(),
            SizedBox(height: 30.h),
            _isLoading==true
                ? Center(
              child: CircularProgressIndicator(),
            )
                : CustomButton(
=======
           // CustomTextField(hintText: 'Your name'),
            CustomTextField(hintText: 'Enter Email',controller: emailContriller,),
            CustomTextField(hintText: 'password', isPassword: true,controller: passwordContriller,),
            CustomTextbutton(),
            SizedBox(height: 30.h),
            _isLoading==true? CircularProgressIndicator()
                :
            CustomButton(
>>>>>>> Stashed changes
=======
           // CustomTextField(hintText: 'Your name'),
            CustomTextField(hintText: 'Enter Email',controller: emailContriller,),
            CustomTextField(hintText: 'password', isPassword: true,controller: passwordContriller,),
            CustomTextbutton(),
            SizedBox(height: 30.h),
            _isLoading==true? CircularProgressIndicator()
                :
            CustomButton(
>>>>>>> Stashed changes
              text: 'Sign Up',
              backgroundColor: AppColors.darkBlue,
              textColor: Colors.white,
              onPressed: () async{
<<<<<<< Updated upstream
<<<<<<< Updated upstream
                await FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text.trim(),
                    password: passwordController.text.trim()).then((onValue){
                      _isLoading==false;
                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> Loginview()));
                }).onError
                  ((handleError,error){
                    _isLoading =false;
                    setState(() {

                    });
                   showDialog(context: context, builder:(BuildContext context){
                     return AlertDialog(title:Text('Handle error'),
                       content: Text('Error:${error.toString()}')
                       ,actions: [
                       TextButton(onPressed: (){
                         Navigator.pop(context);
                       }, child: Text('OK'))
                     ], );

                   });
                });
=======
=======
>>>>>>> Stashed changes
                _isLoading=true;
                setState(() {

                });
                await FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: emailContriller.text.trim(),
                    password: passwordContriller.text.trim()
                ).then((onValue){
                  _isLoading=false;
                  setState(() {

                  });
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginview()));
                }).
                onError(
                        (handleError,error)
                    {
                      _isLoading=false;
                      setState(() {

                      });
                      print('Error:${handleError.toString()}');
                    });
                // setState(() {
                //   _isLoading = true;
                // });
                // // TODO: Sign up functionality
                // Future.delayed(Duration(seconds: 5), () {
                //   setState(() {
                //     _isLoading = false;
                //   });
                // });
<<<<<<< Updated upstream
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
              },
            ),
            SizedBox(height: 10.h),
            Alreadyaccount(),

          ],
        ),
      ),
    );
  }
}