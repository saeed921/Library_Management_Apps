import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_color.dart';

class NewInfoPage extends StatefulWidget {
  const NewInfoPage({Key? key}) : super(key: key);

  @override
  State<NewInfoPage> createState() => _NewInfoPageState();
}

class _NewInfoPageState extends State<NewInfoPage> {

  final nameController = TextEditingController();
  final numberController = TextEditingController();
  final emailController = TextEditingController();
  final addressController = TextEditingController();
  final companyController = TextEditingController();
  final designationController = TextEditingController();
  final websiteController = TextEditingController();


  @override
  void dispose() {
    nameController.dispose();
    numberController.dispose();
    emailController.dispose();
    addressController.dispose();
    companyController.dispose();
    designationController.dispose();
    websiteController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              hintText: "Enter Your Name",
              hintStyle: TextStyle(
                fontSize: 14.sp,
                color: Color(0xFF414041),
              ),
              labelText: 'Name',
              labelStyle: TextStyle(
                fontSize: 15.sp,
                color: AppColor.deepOrange,
              ),
            ),
          ),
          SizedBox(height: 10.h,),
          TextField(
            controller: numberController,
            decoration: InputDecoration(
              hintText: "Enter Your Name",
              hintStyle: TextStyle(
                fontSize: 14.sp,
                color: Color(0xFF414041),
              ),
              labelText: 'Name',
              labelStyle: TextStyle(
                fontSize: 15.sp,
                color: AppColor.deepOrange,
              ),
            ),
          ),
          SizedBox(height: 10.h,),
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              hintText: "Enter Your email",
              hintStyle: TextStyle(
                fontSize: 14.sp,
                color: Color(0xFF414041),
              ),
              labelText: 'Email',
              labelStyle: TextStyle(
                fontSize: 15.sp,
                color: AppColor.deepOrange,
              ),
            ),
          ),
          SizedBox(height: 10.h,),
          TextField(
            controller: addressController,
            decoration: InputDecoration(
              hintText: "Enter Your Address",
              hintStyle: TextStyle(
                fontSize: 14.sp,
                color: Color(0xFF414041),
              ),
              labelText: 'Address',
              labelStyle: TextStyle(
                fontSize: 15.sp,
                color: AppColor.deepOrange,
              ),
            ),
          ),
          SizedBox(height: 10.h,),
          TextField(
            controller: companyController,
            decoration: InputDecoration(
              hintText: "Enter Your Company Name",
              hintStyle: TextStyle(
                fontSize: 14.sp,
                color: Color(0xFF414041),
              ),
              labelText: 'Company Name',
              labelStyle: TextStyle(
                fontSize: 15.sp,
                color: AppColor.deepOrange,
              ),
            ),
          ),
          SizedBox(height: 10.h,),
          TextField(
            controller: designationController,
            decoration: InputDecoration(
              hintText: "Enter Your Designation",
              hintStyle: TextStyle(
                fontSize: 14.sp,
                color: Color(0xFF414041),
              ),
              labelText: 'Designation',
              labelStyle: TextStyle(
                fontSize: 15.sp,
                color: AppColor.deepOrange,
              ),
            ),
          ),
          SizedBox(height: 10.h,),
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              hintText: "Enter Your Website Address",
              hintStyle: TextStyle(
                fontSize: 14.sp,
                color: Color(0xFF414041),
              ),
              labelText: 'Website',
              labelStyle: TextStyle(
                fontSize: 15.sp,
                color: AppColor.deepOrange,
              ),
            ),
          ),
          SizedBox(height: 10.h,),

        ],
      ),
    );
  }
}
