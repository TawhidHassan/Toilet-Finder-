import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Config/text_style.dart';
class CustomButton extends StatelessWidget {
  final String? title;
  final Color? color;
  final Color? textColor;
  final VoidCallback? onTap;
  CustomButton({ this.title, this.color, this.textColor, this.onTap,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width:double.infinity,
        height:46.h,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text('$title',
            style: boldText(16.sp,color: Colors.white),
              textScaleFactor: 1.0),
        ),
      ),
    );
  }
}
