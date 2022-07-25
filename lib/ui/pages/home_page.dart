import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_management/auth_prefs.dart';
import 'package:library_management/ui/app_color.dart';
import 'package:library_management/ui/pages/login_page.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final nameController = TextEditingController();
  final authorNameController = TextEditingController();
  final categoryController = TextEditingController();


final String txt='name';
  @override
  void dispose() {
    nameController.dispose();
    authorNameController.dispose();
    categoryController.dispose();

    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
     actions: [
       NotificationListener(
           child: IconButton(onPressed: (){},

               icon: Icon(Icons.notifications))

       ),
       ElevatedButton.icon(onPressed: (){},
           icon: Icon(Icons.login),
           label: Text('Logn')),
       PopupMenuButton(

         itemBuilder: (context)=>[
           PopupMenuItem(
             onTap: (){
               setLoginStatus(false).then((value)=>
                   Navigator.pushReplacementNamed(context, LoginScreen.routeName));
             },
             child: const Text('about'),
           ),
           PopupMenuItem(
             onTap: (){
               setLoginStatus(false).then((value)=>
                   Navigator.pushReplacementNamed(context, LoginScreen.routeName));
             },
             child: const Text('settings'),
           ),
           PopupMenuItem(
             onTap: (){
               setLoginStatus(false).then((value)=>
                   Navigator.pushReplacementNamed(context, LoginScreen.routeName));
             },
             child: const Text('contact with us'),
           ),
         ],
       ),
     ],
      ),
        body: Container(
     child: Column(
       children: [
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Card(
             shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(150)
             ),
             child: CupertinoSearchTextField(
               itemSize: 50,

             ),

           ),
         ),
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Expanded(
                 child: InkWell(
                   child: Container(
                     height: 80.h,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(16),
                       color: Colors.red,
                     ),


                     child: Center(
                       child: Column(
                         mainAxisSize: MainAxisSize.min,
                         children: [Icon(Icons.groups), Text('Members')],
                       ),
                     ),
                   ),
                   onTap: () {
                     Navigator.pushReplacementNamed(
                         context, LoginScreen.routeName);
                   },
                 ),
               ),
               SizedBox(
                 width: 10.w,
               ),
               InkWell(
                 child: Container(

                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(16),
                     color: Colors.red,
                   ),
                   height: 80.h,
                   width: 180.w,

                   child: Center(
                     child: Column(
                       mainAxisSize: MainAxisSize.min,
                       children: [Icon(Icons.groups), Text('Members')],
                     ),
                   ),
                 ),
                 onTap: () {
                   Navigator.pushReplacementNamed(
                       context, LoginScreen.routeName);
                 },
               ),


             ],
           ),



         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             SizedBox(
               width: 10.w,
             ),
             InkWell(
               child: Container(

                 height: 80.h,
                 width: 180.w,
                 decoration: BoxDecoration(
                   borderRadius:BorderRadius.circular(16),
                   color: Colors.red,
                 ),

                 child: Center(
                   child: Column(
                     mainAxisSize: MainAxisSize.min,
                     children: [Icon(Icons.groups), Text('Members')],
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
             Expanded(
               child: InkWell(
                 child: Container(
                   height: 80.h,
                   width: 180.w,
                   decoration: BoxDecoration(
                     borderRadius:BorderRadius.circular(16),
                     color: Colors.red,
                   ),


                   child: Center(
                     child: Column(
                       mainAxisSize: MainAxisSize.min,
                       children: [Icon(Icons.groups), Text('Members')],
                     ),
                   ),
                 ),
                 onTap: () {
                   Navigator.pushReplacementNamed(
                       context, HomePage.routeName);
                 },
               ),
             ),
           ],
         ),

            Expanded(
               child: Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: ListView(
                   children: [
                     ListTile(
                       title: const Text('Book Name'),
                       leading: Image.asset('images/download.jpg'),
                       subtitle: const Text('Author Name'),
                     ),
                     SizedBox(
                       height: 10.h,
                     ),
                     ListTile(
                       title: const Text('Book Name'),
                       leading: Image.asset('images/download.jpg'),
                       subtitle: const Text('Author Name'),
                     ),
                     SizedBox(
                       height: 10.h,
                     ),
                     ListTile(
                       title: const Text('Book Name'),
                       leading: Image.asset('images/download.jpg'),
                       subtitle: const Text('Author Name'),
                     ),
                     SizedBox(
                       height: 10.h,
                     ),
                     ListTile(
                       title: const Text('Book Name'),
                       leading: Image.asset('images/download.jpg'),
                       subtitle: const Text('Author Name'),
                     ),
                     SizedBox(
                       height: 10.h,
                     ),
                     ListTile(
                       title: const Text('Book Name'),
                       leading: Image.asset('images/download.jpg'),
                       subtitle: const Text('Author Name'),
                     ),
                     SizedBox(
                       height: 10.h,
                     ),
                     ListTile(
                       title: const Text('Book Name'),
                       leading: Image.asset('images/download.jpg'),
                       subtitle: const Text('Author Name'),
                     ),
                     SizedBox(
                       height: 10.h,
                     ),
                     ListTile(
                       title: const Text('Book Name'),
                       leading: Image.asset('images/download.jpg'),
                       subtitle: const Text('Author Name'),
                     ),
                     SizedBox(
                       height: 10.h,
                     ),
                     ListTile(
                       title: const Text('Book Name'),
                       leading: Image.asset('images/download.jpg'),
                       subtitle: const Text('Author Name'),
                     ),
                     SizedBox(
                       height: 10.h,
                     ),
                     ListTile(
                       title: const Text('Book Name'),
                       leading: Image.asset('images/download.jpg'),
                       subtitle: const Text('Author Name'),
                     ),
                     SizedBox(
                       height: 10.h,
                     ),
                     ListTile(
                       title: const Text('Book Name'),
                       leading: Image.asset('images/download.jpg'),
                       subtitle: const Text('Author Name'),
                     ),
                     SizedBox(
                       height: 10.h,
                     ),
                     ListTile(
                       title: const Text('Book Name'),
                       leading: Image.asset('images/download.jpg'),
                       subtitle: const Text('Author Name'),
                     ),
                     SizedBox(
                       height: 10.h,
                     ),
                     ListTile(
                       title: const Text('Book Name'),
                       leading: Image.asset('images/download.jpg'),
                       subtitle: const Text('Author Name'),
                     ),
                     SizedBox(
                       height: 10.h,
                     ),
                   ],
                 ),
               )),

       ],



      ),


    ),

    );


  }
}
