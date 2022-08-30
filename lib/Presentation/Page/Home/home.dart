import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Config/text_style.dart';
import '../../../Constants/Strings/app_strings.dart';
import '../../Widgets/TextField/search_textdield.dart';
import 'MapSection/map_builder.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController searchController= TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 55.h,
        backgroundColor: Colors.white,
        title: Container(
          height: 60.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  flex: 1,
                  child:InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, PROFILE_PAGE);
                    },
                    child: CircleAvatar(
                      radius:32,
                      child: Image.asset("assets/images/logo.png"),
                    ),
                  )
              ),
              Expanded(
                  flex: 8,
                  child: Container(
                      margin: EdgeInsets.only(top: 0.h,left: 8.w),
                      child: MaterialSearchyTextField(controller: searchController, readOnly: false, lable: '', hintText: '',)))
            ],
          ),
        ),
        actions: [
          Container(
              margin: EdgeInsets.only(top: 0.h,right: 20.w),
              child: SvgPicture.asset("assets/icons/radious_iocn.svg",height: 20.h,width: 20.w,))
        ],

      ),
      body: HomeMapBuilDer(),
    );
  }
}
