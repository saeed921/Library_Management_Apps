import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
   final formKey=GlobalKey<FormState>();

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
          IconButton(onPressed: (){
            _saveContactInfo();
          },
              icon: Icon(Icons.save))
        ],
      ),
      body: Form(
        key: formKey,
      child: ListView(
        children: [
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(
                labelText: 'Name',
                prefixIcon: Icon(Icons.person)
            ),
            validator: (value){
              if(value==null||value.isEmpty){
                return 'This field must not be empty';
              }
              if(value.length>5){
                return 'Name must be in 5 carecter';
              }
              else {
                return null;
              }
            },
          ),
          SizedBox(),
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              hintText: "Enter Your Name",
              hintStyle: TextStyle(
                fontSize: 14.sp,
                color: Color(0xFF414041),
              ),
              labelText: 'Id',
              labelStyle: TextStyle(
                fontSize: 15.sp,

              ),
            ),
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

        ],
      ),



      ),
    );
  }

}
void _saveContactInfo() async{

}

