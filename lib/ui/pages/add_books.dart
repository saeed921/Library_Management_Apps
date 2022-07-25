import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:intl/intl.dart';
import 'package:library_management/models/books_name_model.dart';

class AddBooks extends StatefulWidget {
  static const String routeName = '/addbooks';
  const AddBooks({Key? key}) : super(key: key);

  @override
  State<AddBooks> createState() => _AddBooksState();
}

class _AddBooksState extends State<AddBooks> {

  TextEditingController IdController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController authorController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  String? category;
  String? author;
  final formKey = GlobalKey<FormState>();
  String? _dob;

  String? _imagePath;
  ImageSource _imageSource = ImageSource.camera;

  //ImageSource _imageSource =ImageSource.camera;

  @override
  void dispose() {
    IdController.dispose();
    nameController.dispose();
    authorController.dispose();
    categoryController.dispose();
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
          color: Colors.blueGrey,
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: formKey,
                child: ListView(
                  children: [
                    Card(
                      elevation: 10,
                      child: _imagePath == null
                          ? Image.asset(
                        'images/personholder.png',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      )
                          : Image.file(
                        File(_imagePath!),
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
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
                      controller: nameController,
                      decoration: InputDecoration(
                          labelText: 'Enter Books Name',

                          prefixIcon: Icon(Icons.person,
                            size: 35,)
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This field must not be empty';
                        }
                        if (value.length > 5) {
                          return 'Name must be in 5 carecter';
                        }
                        else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(

                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                          controller: IdController,
                          decoration: InputDecoration(

                              labelText: 'Enter Books Id',

                              prefixIcon: Icon(Icons.password,
                                size: 35,)
                          )),
                    ),
                    DropdownButton<String>(
                      isExpanded: true,
                      value: category,
                      hint: const Text('Select Category'),
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
                    DropdownButton<String>(
                      isExpanded: true,
                      value: author,
                      hint: const Text('Select Author Name'),
                      items: AuthorList.map((e) =>
                          DropdownMenuItem(
                              value: e,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(e),
                              )),
                      ).toList(),
                      onChanged: (value) {
                        setState(() {
                          author = value;
                        });
                      },
                    ),

                    Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(onPressed: _selectedDate, child: Text(
                              'Select Books Assign Date')),
                          Text(_dob == null ? 'No Date Selected' : _dob!)
                        ],
                      ),
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

  void _saveContactInfo() async {

  }

