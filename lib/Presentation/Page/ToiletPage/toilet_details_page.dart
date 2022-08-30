import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Config/text_style.dart';
import '../../../Constants/Colors/app_colors.dart';
import '../../Widgets/Button/custom_button.dart';

class ToieltDetails extends StatefulWidget {
  const ToieltDetails({Key? key}) : super(key: key);

  @override
  _ToieltDetailsState createState() => _ToieltDetailsState();
}

class _ToieltDetailsState extends State<ToieltDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Prescription Tower",style: regularText(16.sp,color: Colors.black),textScaleFactor: 1.0),
        leading: BackButton(color: Colors.black,),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.directions_walk,color: Color(0xFF718096),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert,color: Color(0xFF718096),),
          ),
        ],
      ),
      body:Container(
        height: 1.0.sh,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 224.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/toilet_big.png"),
                        fit: BoxFit.fitHeight
                    )
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: EdgeInsets.all(12),
                        height: 32.h,
                        width: 32.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white
                        ),
                        child: Center(
                          child: SvgPicture.asset("assets/icons/bookmark.svg"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text("About",style: boldText(16.sp,color: Colors.black),textScaleFactor: 1.0),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
                child: Text("If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing in the middle of text.",style: regularText(13.sp,color: Colors.grey),textScaleFactor: 1.0),
              ),
              Divider(color:  Color(0xFFEDF2F7),thickness: 1,endIndent: 16,indent: 16,),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text("Address",style: boldText(16.sp,color: Colors.black),textScaleFactor: 1.0),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
                child: Text("House - Ga 136 (level 3) Pragati sarani, Kamlapur branch Dhaka, bangladesh",style: regularText(13.sp,color: Colors.grey),textScaleFactor: 1.0),
              ),
              Divider(color:  Color(0xFFEDF2F7),thickness: 1,endIndent: 16,indent: 16,),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                width: 1.0.sw,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text("Cost",style: regularText(14.sp,color: Color(0xFF4A5568)),textScaleFactor: 1.0),
                        ),
                    ),Expanded(
                      flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text("Free",style: regularText(14.sp,color: Color(0xFF4A5568)),textScaleFactor: 1.0,textAlign: TextAlign.end,),
                        ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              SizedBox(
                width: 1.0.sw,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text("No. of toilet",style: regularText(14.sp,color: Color(0xFF4A5568)),textScaleFactor: 1.0,),
                        ),
                    ),Expanded(
                      flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text("50",style: regularText(14.sp,color: Color(0xFF4A5568)),textScaleFactor: 1.0,textAlign: TextAlign.end,),
                        ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              SizedBox(
                width: 1.0.sw,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text("Review",style: regularText(14.sp,color: Color(0xFF4A5568)),textScaleFactor: 1.0,),
                        ),
                    ),
                    Expanded(
                      flex: 2,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            // margin: EdgeInsets.only(right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              RatingBar.builder(
                                initialRating: 3,
                                minRating: 2,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                itemSize: 20,
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              Text("4.9 (36)",style: regularText(14.sp,color: Color(0xFF4A5568)),textScaleFactor: 1.0,)
                            ],
                          ),
                        ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Divider(color:  Color(0xFFEDF2F7),thickness: 1,endIndent: 16,indent: 16,),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text("Address",style: boldText(16.sp,color: Colors.black),textScaleFactor: 1.0),
              ),
              SizedBox(
                height: 12.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      flex:1,
                      child: CircleAvatar(
                        radius:35,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("assets/images/logo.png"),
                      ),
                    ),Expanded(
                      flex:9,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Rubiayta haq",style: boldText(13.sp,color: Colors.black),textScaleFactor: 1.0),
                            Text("Owner",style: regularText(13.sp,color: Color(0xFF4A5568)),textScaleFactor: 1.0),
                          ],
                        ),
                      )
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Divider(color:  Color(0xFFEDF2F7),thickness: 1,endIndent: 16,indent: 16,),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text("Review",style: boldText(16.sp,color: Colors.black),textScaleFactor: 1.0),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                // margin: EdgeInsets.only(right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 2,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemSize: 30,
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    Container(
                      margin: EdgeInsets.all(12),
                      height: 38.h,
                      width: 78.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: kPrimaryColorx
                      ),
                      child: Center(
                        child: Text("Submit",style: boldText(16.sp,color: Colors.white),textScaleFactor: 1.0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
