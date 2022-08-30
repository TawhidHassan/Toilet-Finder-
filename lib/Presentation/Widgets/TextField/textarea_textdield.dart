
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Config/text_style.dart';
import '../../../Constants/Colors/app_colors.dart';

class TextAreaTextField extends StatelessWidget {
  final String lable;
  final String hintText;
  final bool readOnly;
  final String title;
  TextAreaTextField({required this.lable,required this.controller, required this.hintText,required this.readOnly, required this.title});
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
            minLines: 3, // any number you need (It works as the rows for the textarea)
            keyboardType: TextInputType.multiline,
            maxLines: null,
            readOnly: readOnly,
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              labelText: lable,
              contentPadding:
              EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              enabledBorder:  OutlineInputBorder(
                borderSide:
                BorderSide(color:textFieldBorder, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide:
                BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
          )
        ]
    );
  }
}
