import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:library_management/ui/pages/login_page.dart';

class BookDetailsPage extends StatefulWidget {
  static const String routeName='/book_details';


  @override
  State<BookDetailsPage> createState() => _BookDetailsPageState();
}

class _BookDetailsPageState extends State<BookDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('books details page'),
      ),
      body: Container(
        child: Column(
          children: [
            //image, name, author name, cetogory

            Container(
              child: Row(
                children: [
                  ElevatedButton.icon(onPressed: (){
                    Navigator.pushReplacementNamed(context, LoginScreen.routeName);

                  },
                      icon: Icon(Icons.add),
                      label: Text('Get Books')),
                ],
              ),


        ),
      ]),
    ));
  }
}
