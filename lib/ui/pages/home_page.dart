import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:library_management/auth_prefs.dart';
import 'package:library_management/ui/app_color.dart';
import 'package:library_management/ui/pages/book_details_page.dart';
import 'package:library_management/ui/pages/booka_list_pages.dart';
import 'package:library_management/ui/pages/login_page.dart';
import 'package:library_management/ui/pages/user_dashboard.dart';

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
  List<String> _categories = [
    'Popular Books',
    'Most Recent',
    'Novels',
    'Poems',
    'Programming',
    'Developments',
    'Sci-Fi',
    'Magazine'
    'Research'
  ];


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
       ElevatedButton.icon(onPressed: (){
         Navigator.pushNamed(context, LoginScreen.routeName);
       },
           icon: Icon(Icons.login),
           label: Text('Logn')),
       PopupMenuButton(

         itemBuilder: (context)=>[
           PopupMenuItem(
             onTap: (){

                   Navigator.pushReplacementNamed(context, LoginScreen.routeName);
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
                       context, UserDashBoard.routeName);
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
            SizedBox(
              height: 10,
            ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             height: 40,
             child: ListView.builder(
                 scrollDirection: Axis.horizontal,
                 itemCount: _categories.length,
                 itemBuilder: (context, index) {
                   return Padding(
                     padding: const EdgeInsets.only(right: 10.0),
                     child: GestureDetector(
                       onTap: (){
                       Navigator.pushNamed(context, BookListPages.routeName, arguments: _categories[index]);


                       },
                       child: Container(

                         decoration: BoxDecoration(
                             color: Colors.grey,
                             borderRadius:
                             BorderRadius.all(Radius.circular(20))),
                         child: Padding(
                           padding: const EdgeInsets.symmetric(
                               horizontal: 12.0, vertical: 5.0),
                           child: Center(child: Text(_categories[index],),
                           ),

                         ),
                       ),
                     ),
                   );
                 }),
           ),
         ),
         Container(

           child: ListTile(

             title: Text('New Arrival',
             style: TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.w900),),
             trailing: GestureDetector(
               onTap: (){
                 Navigator.pushNamed(context, BookListPages.routeName);
               },
               child: TextButton(
                 child: Text('View All>',style:
                   TextStyle(fontSize: 30, color: Colors.redAccent),),
                 onPressed: (){
                   Navigator.pushReplacementNamed(context, BookListPages.routeName);
                 },
               ),
             ),
             tileColor: Colors.white10,
           ),
         ),

            Expanded(

               child: Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: ListView(
                   children: [
                     InkWell(
                       child: ListTile(
                         title: const Text('Book Name'),
                         leading: Image.asset('images/download.jpg'),
                         subtitle: const Text('Author Name'),

                       ),onTap: (){
                      Navigator.pushReplacementNamed(context, BookDetailsPage.routeName);
                     },
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
