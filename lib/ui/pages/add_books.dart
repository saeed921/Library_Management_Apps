import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:intl/intl.dart';
import 'package:library_management/models/books_name_model.dart';
import 'package:library_management/ui/pages/user_dashboard.dart';

import '../../db/db_helper.dart';

class AddBooks extends StatefulWidget {
  static const String routeName = '/addbooks';
  const AddBooks({Key? key}) : super(key: key);

  @override
  State<AddBooks> createState() => _AddBooksState();
}

class _AddBooksState extends State<AddBooks> {

  final idController = TextEditingController();
  final bookNameController = TextEditingController();
  final authNameController = TextEditingController();
  final categoryNameController= TextEditingController();


  final fromkey = GlobalKey<FormState>();
  String? category;
  String? author;
  final formKey = GlobalKey<FormState>();
  String? _dob;

  String? _imagePath;
  ImageSource _imageSource = ImageSource.camera;

  //ImageSource _imageSource =ImageSource.camera;
  void _saveContactInfo() async{
    if (fromkey.currentState!.validate()) {
      final book = BookModel(

          name: bookNameController.text,
          auth: authNameController.text
      );
      print(book.toString());
      final rowId = await DBHelper.insertBook(book);
      if (rowId > 0) {
        book.id = rowId as int;
        Navigator.pushReplacementNamed(context, UserDashBoard.routeName);
      }
    }
  }
  @override
  void dispose() {
bookNameController.dispose();
    authNameController.dispose();
    idController.dispose();

    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {
            _saveContactInfo();
          },
              icon: Icon(Icons.save))
        ],
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: fromkey,
                child: ListView(
                  children: [
                    Center(
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(150)),
                        elevation: 10,
                        child: _imagePath == null
                            ? ClipRRect(
                          borderRadius: BorderRadius.circular(150),
                              child: Image.asset(
                          'images/personholder.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                            )
                            : Image.file(
                          File(_imagePath!),
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton.icon(
                          icon: const Icon(Icons.camera),
                          onPressed: () {
                            _imageSource = ImageSource.camera;
                            getImages();
                          },
                          label: const Text('Capture'),
                        ),
                        TextButton.icon(
                          icon: const Icon(Icons.photo),
                          onPressed: () {
                            _imageSource = ImageSource.gallery;
                            getImages();
                          },
                          label: const Text('Gallery'),
                        ),
                      ],
                    ),
                    TextFormField(
                      controller: bookNameController,
                      decoration: InputDecoration(
                          labelText: 'Enter Books Name',

                          prefixIcon: Icon(Icons.menu_book_sharp,
                            size: 35,)
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This field must not be empty';
                        }
                        if (value.length > 20) {
                          return 'Name must be in 5 carecter';
                        }
                        else {
                          return null;
                        }
                      },
                    ),
                    TextFormField(
                      controller: authNameController,
                      decoration: InputDecoration(labelText: 'Enter Book Author Name',
                      prefixIcon: Icon(Icons.perm_contact_cal_rounded, size: 35,)),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This field must not be empty';
                        }
                      },
                    ),
                    SizedBox(

                    ), DropdownButton<String>(
                      isExpanded: true,
                      value: category,
                      dropdownColor: Colors.lightBlueAccent,
                      hint: const Text('Select Category',),
                      items: CategoryList.map((e) =>
                          DropdownMenuItem(
                              value: e,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(e),
                              )),
                      ).toList(),
                      onChanged: (value) {
                        setState(() {
                          category = value;
                        });
                      },
                    ),
SizedBox(
  height: 10,
),

                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26),

                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(onPressed: _selectedDate, child: Text(
                              'Select Books Assign Date')),
                          Text(_dob == null ? 'No Date Selected' : _dob!)
                        ],
                      ),
                      color: Colors.lightBlueAccent,
                    ),
                  ],
                ),
              ),


          ),


        ),
      ),);
  }
  void getImages() async {
    final selectedImage = await ImagePicker().pickImage(source: _imageSource);
    if (selectedImage != null) {
      setState(() {
        _imagePath = selectedImage.path;
      });
    }
  }
  void _selectedDate() async {
    final selectedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime.now());
    if (selectedDate != null) {
      setState(() {
        _dob = DateFormat('dd/MM/yyyy').format(selectedDate);
      });
    }
  }}




