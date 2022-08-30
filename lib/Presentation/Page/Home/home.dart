
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../../Config/text_style.dart';
import '../../../Constants/Colors/app_colors.dart';
import '../../../Constants/Strings/app_strings.dart';
import '../../Widgets/Button/custom_button.dart';
import '../../Widgets/TextField/search_textdield.dart';
import 'MapSection/map_builder.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController searchController= TextEditingController();
  double _value = 40.0;
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
          InkWell(
            onTap: (){
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: StatefulBuilder(  // You need this, notice the parameters below:
                      builder: (BuildContext context, StateSetter setState) {
                        return Container(
                          alignment: Alignment.topCenter,
                          height: 233.h,
                          width: MediaQuery.of(context).size.width*0.7,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Set Radius",style: boldText(14.sp,color: Colors.black),textScaleFactor: 1.0),
                              SfSlider(
                                min: 0.0,
                                max: 120.0,
                                value: _value,
                                interval: 40,
                                showTicks: true,
                                showLabels: true,
                                labelFormatterCallback: (dynamic actualValue, String formattedText) {
                                  return actualValue == 10000 ? '$formattedText Km+' : '$formattedText Km';
                                },
                                enableTooltip: true,
                                shouldAlwaysShowTooltip: false,
                                tooltipShape: SfPaddleTooltipShape(),
                                minorTicksPerInterval: 1,
                                onChanged: (dynamic value){
                                  setState(() {
                                    _value = value;
                                  });
                                },
                              ),
                              Text("Selected area",style: regularText(11.sp,color: Colors.black),textScaleFactor: 1.0),
                              Container(
                                width: double.infinity,
                                height: 32.h,
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Color(0xFFE2E8F0)),
                                ),
                                child: Text(_value.toStringAsFixed(2).toString()+" Km",style: boldText(14.sp,color: Colors.black),textScaleFactor: 1.0,textAlign: TextAlign.start,),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    width: 70.w,
                                    child: CustomButton(height: 35,boder: true,color: kPrimaryColorx,title: "Cancel",onTap: (){
                                      Navigator.pop(context);
                                    },),
                                  ),
                                  SizedBox(width: 8.w,),
                                  SizedBox(
                                    width: 47.w,
                                    child: CustomButton(height: 35,color: kPrimaryColorx,title: "Set",onTap: (){
                                    },),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  );
                },
              );
            },
            child: Container(
                margin: EdgeInsets.only(top: 0.h,right: 20.w),
                child: SvgPicture.asset("assets/icons/radious_iocn.svg",height: 20.h,width: 20.w,)),
          )
        ],

      ),
      body: HomeMapBuilDer(),
    );
  }





}
