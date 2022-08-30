import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../Config/text_style.dart';

class ProfileButton extends StatelessWidget {
  final String? title;
  final String? icon;
  final Color? color;
  const ProfileButton({Key? key, this.title, this.icon, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      width: 1.0.sw,
      height: 30.h,
      child: Row(
        children: [
          Expanded(
            flex: 2,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                padding: EdgeInsets.all(4),
                height: 32.h,
                width: 32.w,
                decoration: BoxDecoration(
                  color:color! ,
                  borderRadius: BorderRadius.circular(4)
                ),
                child: SvgPicture.asset(icon!),
              )
          ),

          Expanded(
            flex: 8,
              child: Text(title!,style: boldText(16.sp,color: Colors.black),textScaleFactor: 1.0)
          ),
          Expanded(
              flex: 1,
              child: Icon(Icons.arrow_forward_ios,color: Color(0xFFCBD5E0),)
          )
        ],
      ),
    );
  }
}
