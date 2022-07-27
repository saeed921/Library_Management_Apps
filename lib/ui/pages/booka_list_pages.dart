import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookListPages extends StatefulWidget {
  static const routeName='/bookList';
  const BookListPages({Key? key}) : super(key: key);

  @override
  State<BookListPages> createState() => _BookListPagesState();
}

class _BookListPagesState extends State<BookListPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book List Page'),

      ),body: Container(
      child: Column(
        children: [

        ],
      ),
    ),
    );
  }
}
