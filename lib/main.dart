import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_management/ui/pages/add_books.dart';
import 'package:library_management/ui/pages/book_details_page.dart';
import 'package:library_management/ui/pages/booka_list_pages.dart';
import 'package:library_management/ui/pages/home_page.dart';
import 'package:library_management/ui/pages/launcher_page.dart';
import 'package:library_management/ui/pages/login_page.dart';
import 'package:library_management/ui/pages/registration_page.dart';
import 'package:library_management/ui/pages/splash_screen.dart';
import 'package:library_management/ui/pages/user_dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: SplashScreen.routeName,
            routes: {
              SplashScreen.routeName : (context) => SplashScreen(),
              LoginScreen.routeName : (context) => LoginScreen(),
              HomePage.routeName : (context) => HomePage(),
              RegistrationScreen.routeName : (context) => RegistrationScreen(),
              LauncherPage.routeName : (context) => LauncherPage(),
              UserDashBoard.routeName : (context) => UserDashBoard(),
              AddBooks.routeName : (context) => AddBooks(),
              BookDetailsPage.routeName:(context)=>BookDetailsPage(),
              BookListPages.routeName:(context)=> BookListPages(),



            },
          );
    });
  }
}
