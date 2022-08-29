
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Config/text_style.dart';
import '../../../Constants/Colors/app_colors.dart';

class MaterialTextFieldPassword extends StatefulWidget {

  final String title;
  final String lable;
  final String hintText;

  MaterialTextFieldPassword({required this.lable,required this.controller, required this.hintText, required this.title});
  TextEditingController controller = TextEditingController();

  @override
  State<MaterialTextFieldPassword> createState() => _MaterialTextFieldState();
}

class _MaterialTextFieldState extends State<MaterialTextFieldPassword> {
  bool _passwordVisible = true;

  @override
  void initState() {
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title,style: regularText(14.sp,color: Colors.black),textScaleFactor: 1.0),
        SizedBox(height: 8.h,),
        TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please fillup';
            }
            return null;
          },
          obscureText: _passwordVisible,
          controller: widget.controller,
          decoration: InputDecoration(
            hintText: widget.hintText,
            labelText: widget.lable,
            suffixIcon: IconButton(
              icon: Icon(
                // Based on passwordVisible state choose the icon
                _passwordVisible
                    ? Icons.visibility
                    : Icons.visibility_off,
                color:textFieldBorder,
              ),
              onPressed: () {
                // Update the state i.e. toogle the state of passwordVisible variable
                setState(() {
                  _passwordVisible = !_passwordVisible;
                });
              },
            ),
            contentPadding:
            EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color:textFieldBorder, width: 1.0),
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
