import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_management/auth_prefs.dart';
import 'package:library_management/ui/app_color.dart';
import 'package:library_management/ui/pages/home_page.dart';
import 'package:library_management/ui/pages/login_page.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {

    getLoginStatus().then((value){
      if(value){
        Navigator.pushReplacementNamed(context, HomePage.routeName);
      }
      else{
        Navigator.pushReplacementNamed(context, LoginScreen.routeName);
      }
    });

    super.initState();
  }

  @override
  void didChangeDependencies() {
    Timer(Duration(seconds: 3),()=> Navigator.pushNamed(context, LoginScreen.routeName));
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.deepOrange,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Welcome',style: TextStyle(fontSize: 25.sp,color: Colors.white),),
            SizedBox(height: 15.h,),
            CircularProgressIndicator(
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
