
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toiletfinder/Constants/Colors/app_colors.dart';

import '../../../Config/text_style.dart';

class MaterialBackgroundTextField extends StatelessWidget {
  final String lable;
  final String title;
  final String hintText;
  final bool readOnly;
  final bool isNumber;
  MaterialBackgroundTextField({required this.lable,required this.controller, required this.hintText, this.readOnly=false,  this.isNumber=false, required this.title});
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: regularText(14.sp,color: Colors.black),textScaleFactor: 1.0),
        SizedBox(height: 8.h,),
        TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please fillup';
            }
            return null;
          },
          keyboardType: isNumber?TextInputType.number:TextInputType.text,
          readOnly: readOnly,
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey),
            labelText: lable,
            fillColor: Colors.white,
            filled: true,
            contentPadding:
            EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color:Color(0xFFE2E8F0), width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: kPrimaryColorx, width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
        )
      ],
    );
  }
}
