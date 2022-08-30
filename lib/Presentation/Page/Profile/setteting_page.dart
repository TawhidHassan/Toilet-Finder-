import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Config/text_style.dart';
import 'Component/profile_button.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Settings",style: regularText(16.sp,color: Colors.black),textScaleFactor: 1.0),
        leading: BackButton(color: Colors.black,),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Divider(color:  Color(0xFFEDF2F7),thickness: 1,endIndent: 16,indent: 16,),
            SizedBox(
              height: 21.h,
            ),
            ProfileButton(title: "Push notification",icon: "assets/icons/Notification.svg",color: Colors.white),
            SizedBox(
              height: 21.h,
            ),
            Divider(color:  Color(0xFFEDF2F7),thickness: 1,endIndent: 16,indent: 16,),
            SizedBox(
              height: 21.h,
            ),
            ProfileButton(title: "Change language",icon: "assets/icons/Langua.svg",color: Colors.white),
            SizedBox(
              height: 21.h,
            ),
            Divider(color:  Color(0xFFEDF2F7),thickness: 1,endIndent: 16,indent: 16,),
            SizedBox(
              height: 21.h,
            ),
            ProfileButton(title: "Change password",icon: "assets/icons/Lock.svg",color: Colors.white),
            SizedBox(
              height: 21.h,
            ),
            Divider(color:  Color(0xFFEDF2F7),thickness: 1,endIndent: 16,indent: 16,),
            SizedBox(
              height: 21.h,
            ),
            ProfileButton(title: "Radius",icon: "assets/icons/radious_iocn.svg",color: Colors.white),
            SizedBox(
              height: 21.h,
            ),
            Divider(color:  Color(0xFFEDF2F7),thickness: 1,endIndent: 16,indent: 16,),
            SizedBox(
              height: 21.h,
            ),
          ],
        ),
      ),
    );
  }
}
