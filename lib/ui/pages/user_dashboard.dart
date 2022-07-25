import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_management/ui/pages/add_books.dart';
import 'package:library_management/ui/pages/home_page.dart';
import 'package:library_management/ui/pages/login_page.dart';

class UserDashBoard extends StatefulWidget {
  static const String routeName = '/dashboard';

  const UserDashBoard({Key? key}) : super(key: key);

  @override
  State<UserDashBoard> createState() => _UserDashBoardState();
}

class _UserDashBoardState extends State<UserDashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Text('Dashboard'),
        actions: [
          IconButton(onPressed: () {
            Navigator.pushReplacementNamed(context, AddBooks.routeName);
          }, icon: Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      body:Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Container(
                        height: 100.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.lightBlueAccent,
                        ),

                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [Icon(Icons.groups,size: 55,),
                              Text('Total Students',
                                style: TextStyle(fontSize: 20),)],
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, LoginScreen.routeName);
                      },
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    InkWell(
                      child: Container(
                        height: 100.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.lightBlueAccent,
                        ),

                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [Icon(Icons.menu_book_sharp,size: 55,),
                              Text('Total Books',
                              style: TextStyle(fontSize: 20),)],
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, LoginScreen.routeName);
                      },
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    InkWell(
                      child: Container(
                        height: 100.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.lightBlueAccent,
                        ),

                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [Icon(Icons.menu_book_sharp,size: 55,), Text('Members')],
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, LoginScreen.routeName);
                      },
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    InkWell(
                      child: Container(
                        height: 80.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.lightBlueAccent,
                        ),

                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [Icon(Icons.groups,size: 55,),
                              Text('Members')],
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, HomePage.routeName);
                      },
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Container(
                        height: 150.h,
                        width: 80.w,
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(16),
                        //   color: Colors.white,
                        // ),

                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset('images/dm.jpeg',
                                  height: 160,
                                  width: 150,
                                  fit: BoxFit.cover)
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      height: 160.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                      ),

                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, LoginScreen.routeName);
                              },
                              child: Image.asset('images/englishbook.jpg',
                                  height: 160,
                                  width: 160,
                                  fit: BoxFit.cover),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      height: 150.h,
                      width: 150.w,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                      ),

                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('images/dm.jpeg',
                                height: 150,
                                width: 160,
                                fit: BoxFit.cover)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      height: 150.h,
                      width: 100.w,
                      color: Colors.white,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('images/englishbook.jpg',
                                height: 160,
                                width: 160,
                                fit: BoxFit.cover)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      height: 150.h,
                      width: 150.w,
                      color: Colors.white,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('images/dm.jpeg',
                                height: 160,
                                width: 150,
                                fit: BoxFit.cover)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      height: 150.h,
                      width: 150.w,
                      color: Colors.white10,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('images/englishbook.jpg',
                                height: 160,
                                width: 160,
                                fit: BoxFit.cover)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                  ],
                )),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView(
                    children: [
                      ListTile(
                        title: const Text('Book Name'),
                        leading: Image.asset('name'),
                        subtitle: const Text('Author Name'),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      ListTile(
                        title: const Text('Book Name'),
                        leading: Image.asset('name'),
                        subtitle: const Text('Author Name'),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      ListTile(
                        title: const Text('Book Name'),
                        leading: Image.asset('name'),
                        subtitle: const Text('Author Name'),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      ListTile(
                        title: const Text('Book Name'),
                        leading: Image.asset('name'),
                        subtitle: const Text('Author Name'),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      ListTile(
                        title: const Text('Book Name'),
                        leading: Image.asset('name'),
                        subtitle: const Text('Author Name'),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      ListTile(
                        title: const Text('Book Name'),
                        leading: Image.asset('name'),
                        subtitle: const Text('Author Name'),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      ListTile(
                        title: const Text('Book Name'),
                        leading: Image.asset('name'),
                        subtitle: const Text('Author Name'),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      ListTile(
                        title: const Text('Book Name'),
                        leading: Image.asset('name'),
                        subtitle: const Text('Author Name'),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      ListTile(
                        title: const Text('Book Name'),
                        leading: Image.asset('name'),
                        subtitle: const Text('Author Name'),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      ListTile(
                        title: const Text('Book Name'),
                        leading: Image.asset('name'),
                        subtitle: const Text('Author Name'),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      ListTile(
                        title: const Text('Book Name'),
                        leading: Image.asset('name'),
                        subtitle: const Text('Author Name'),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      ListTile(
                        title: const Text('Book Name'),
                        leading: Image.asset('name'),
                        subtitle: const Text('Author Name'),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  ),
                ))
          ],
        ),
      )
    );
  }
}
