
import 'package:flutter/material.dart';

import '../../../Constants/Colors/app_colors.dart';

class MaterialSearchyTextField extends StatelessWidget {


  final String lable;
  final String hintText;
  final bool readOnly;
  MaterialSearchyTextField({required this.lable,required this.controller, required this.hintText,required this.readOnly});
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return TextFormField(

      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please fillup';
        }
        return null;
      },

      readOnly: readOnly,
      controller: controller,
      decoration: InputDecoration(

        prefixIcon: new Padding(
          padding: const EdgeInsets.only( top: 5, left: 5, right: 0, bottom: 5),
          child: Icon(Icons.search)
        ),
        hintText: hintText,
        labelText: lable,
        contentPadding:
        EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
          BorderSide(color:Color(0xFFE2E8F0), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
          BorderSide(color: kPrimaryColorx, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
