import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toiletfinder/Constants/Colors/app_colors.dart';

import '../../../Config/text_style.dart';
import '../../../Constants/Strings/app_strings.dart';
import '../../Widgets/Button/custom_button.dart';
import '../../Widgets/TextField/normal_background_textdield.dart';
import '../../Widgets/TextField/password_textdield.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  TextEditingController emailController= TextEditingController();
  TextEditingController passwordController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
        height: 1.0.sh,
        width: 1.0.sw,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Welcome back!",style: extraBoldText(24.sp),textScaleFactor: 1.0),
            SizedBox(height: 16.h,),
            Text("Don’t have an account? Get Started",style: regularText(14.sp,color: Colors.grey),),
            SizedBox(height: 32.h,),
            MaterialBackgroundTextField(controller: emailController, readOnly: false, lable: '', hintText: '+88 01XXXXXXXXX', title: 'Phone Number',),
            SizedBox(height: 24.h,),
            MaterialTextFieldPassword(controller: passwordController, lable: '', title: 'Password', hintText: '#sdh@hs201%d',),
            SizedBox(height: 24.h,),
            Text("Forgot password?",style: boldText(14.sp,color: Colors.black),textScaleFactor: 1.0),
            SizedBox(height: 44.h,),
            CustomButton(color: kPrimaryColorx,title: "Log in",onTap: (){
                 Navigator.pushNamedAndRemoveUntil(context, HOME_PAGE,(route) => false,);
            },)
          ],
        ),
      ),
    );
  }
}
