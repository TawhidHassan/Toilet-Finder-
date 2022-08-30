import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Config/text_style.dart';
import '../../../Constants/Colors/app_colors.dart';
import '../../../Constants/Strings/app_strings.dart';
import '../../Widgets/Button/custom_button.dart';
import '../../Widgets/TextField/search_textdield.dart';
import 'Component/toilet_list_card.dart';


class ToiletListPage extends StatefulWidget {
  const ToiletListPage({Key? key}) : super(key: key);

  @override
  _ToiletListPageState createState() => _ToiletListPageState();
}

class _ToiletListPageState extends State<ToiletListPage> {
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
        automaticallyImplyLeading: false,
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
                  child:CircleAvatar(
                    radius:32,
                    child: Image.asset("assets/images/logo.png"),
                  )
              ),
              Expanded(
                  flex: 8,
                  child: Container(
                      height: 32.h,
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
      body: Container(
        height: 1.0.sh,
        child: Stack(
          children: [
            SizedBox(
              height: 1.0.sh,
              child: ListView(
                children: [
                  InkWell(
                      onTap:(){
                        Navigator.pushNamed(context, TOILET_DETAILS_PAGE);
                      },
                      child: ToiletListCurd()),
                  ToiletListCurd(),
                  ToiletListCurd(),
                  ToiletListCurd(),
                  ToiletListCurd(),
                  ToiletListCurd(),
                  ToiletListCurd(),
                  ToiletListCurd(),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                  width:89.w,
                  child: Container(
                    margin: EdgeInsets.only(right: 10,bottom: 20),
                    child: CustomButton(color: kPrimaryColorx,title: "ListView",onTap: (){
                      Navigator.pop(context);
                    },),
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
