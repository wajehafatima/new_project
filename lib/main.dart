import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/firebase_options.dart';
import 'package:newproject/src/view/auth_view/loginView/loginView.dart';
import 'package:newproject/src/view/auth_view/signupView/signupView.dart';
import 'package:newproject/src/view/homeView/homeView.dart';
import 'package:newproject/src/view/homeView/insertdataView/insertdataView.dart';
import 'package:newproject/src/view/startingView/splashView/splashView.dart';
// connect project with firebase......


// future work (functions to be performed in future).....
// asyncronous.......
//1. async
// 2. flutter binding
// 3. firebase default options......

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360,640),
      child: MaterialApp(debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',

          home://Insertdataview()

        //  Homeview()
        Splashview()

      ),
    );

  }
}

