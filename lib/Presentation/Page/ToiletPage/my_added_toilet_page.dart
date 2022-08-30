import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Config/text_style.dart';

class MyAddedToiletPage extends StatefulWidget {
  const MyAddedToiletPage({Key? key}) : super(key: key);

  @override
  _MyAddedToiletPageState createState() => _MyAddedToiletPageState();
}

class _MyAddedToiletPageState extends State<MyAddedToiletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("My Added Toilet",style: regularText(16.sp,color: Colors.black),textScaleFactor: 1.0),
        leading: BackButton(color: Colors.black,),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/images/toilet_not_found.svg"),
            Text("You haven't added any toilets",style: regularText(16.sp,color: Colors.black),textScaleFactor: 1.0)
          ],
        ),
      ),
    );
  }
}
