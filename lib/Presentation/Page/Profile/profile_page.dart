import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_share/flutter_share.dart';

import '../../../Config/text_style.dart';
import '../../../Constants/Strings/app_strings.dart';
import 'Component/profile_button.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({Key? key}) : super(key: key);

  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Profile",style: regularText(16.sp,color: Colors.black),textScaleFactor: 1.0),
        leading: BackButton(color: Colors.black,),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.edit ,color: Color(0xFF718096),),
          ),

        ],
      ),
      body: Container(
        height: 1.0.sh,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 12.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: 0.20.sh,
                width: 1.0.sw,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex:1,
                      child: CircleAvatar(
                        radius:35,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("assets/images/logo.png"),
                      ),
                    ),
                    SizedBox(height: 16.h,),
                    Expanded(
                        flex:1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Rubiayta haq",style: boldText(13.sp,color: Colors.black),textScaleFactor: 1.0),
                              SizedBox(height: 8.h,),
                              Text("tanya.hill@example.com",style: regularText(13.sp,color: Color(0xFF4A5568)),textScaleFactor: 1.0),
                            ],
                          ),
                        )
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text("Review",style: boldText(16.sp,color: Colors.black),textScaleFactor: 1.0),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
                child: Text("House - Ga 136 (level 3) Pragati sarani, Kamlapur branch Dhaka, bangladesh",style: regularText(13.sp,color: Colors.grey),textScaleFactor: 1.0),
              ),
              Divider(color:  Color(0xFFEDF2F7),thickness: 1,endIndent: 16,indent: 16,),
              SizedBox(
                height: 16.h,
              ),
              InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, ADD_TOILET_PAGE);
                  },
                  child: ProfileButton(title: "Add Toilet",icon: "assets/icons/add _toilet.svg",color: Color(0xFFFCAF2A))),
              SizedBox(
                height: 24.h,
              ),
              InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, MY_ADDED_TOILET_PAGE);
                  },
                  child: ProfileButton(title: "My Added Toilet",icon: "assets/icons/my_added_toilet.svg",color: Color(0xFFF00C1F7))),
              SizedBox(
                height: 24.h,
              ),
              InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, MY_REVIEW_PAGE);
                  },
                  child: ProfileButton(title: "My Review",icon: "assets/icons/Star.svg",color: Color(0xFFF456EFE))),
              SizedBox(
                height: 24.h,
              ),
              InkWell(
                  onTap: (){
                      Navigator.pushNamed(context, SETTING_PAGE);
                    },
                  child: ProfileButton(title: "Settings",icon: "assets/icons/Settings.svg",color: Color(0xFFFB139FF))),
              SizedBox(
                height: 24.h,
              ),
              Divider(color:  Color(0xFFEDF2F7),thickness: 1,endIndent: 16,indent: 16,),
              SizedBox(
                height: 24.h,
              ),
              ProfileButton(title: "Rate Us",icon: "assets/icons/rate_us.svg",color: Color(0xFFFF6951)),
              SizedBox(
                height: 24.h,
              ),
              InkWell(
                  onTap: (){
                    share();
                  },
                  child: ProfileButton(title: "Share App",icon: "assets/icons/Share.svg",color: Color(0xFF1CCD9D))),
              SizedBox(
                height: 24.h,
              ),
              Divider(color:  Color(0xFFEDF2F7),thickness: 1,endIndent: 16,indent: 16,),
              SizedBox(
                height: 24.h,
              ),
              ProfileButton(title: "Logout",icon: "assets/icons/log-out.svg",color: Color(0xFFF0103D)),
              SizedBox(
                height: 24.h,
              ),
            ],
          ),
        ),
      ),
    );
  }


}
Future<void> share() async {
  await FlutterShare.share(
      title: 'Share My App',
      text: ' Womlet Share With Your Friends ',
      linkUrl: 'https://flutter.dev/',
      chooserTitle: 'Womlet Share With Your Friends'
  );
}
