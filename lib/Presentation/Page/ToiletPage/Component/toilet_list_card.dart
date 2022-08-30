import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Config/text_style.dart';

class ToiletListCurd extends StatelessWidget {
  const ToiletListCurd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300)
      ),
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.all(12),
      height: 112.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Expanded(
           flex:3,
           child:  Container(
             decoration: BoxDecoration(
               image: DecorationImage(
                 image: AssetImage("assets/images/toilet.png"),
                 fit: BoxFit.contain
               )
             ),
           ),),
          Expanded(
            flex: 7,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex:1,
                    child: Text("Prescription Tower",style: boldText(14.sp,color: Colors.black),textScaleFactor: 1.0),),

                  Expanded(
                    flex:1,
                    child: Text("House - Ga 136 (level 3) Pragati",style: regularText(8.sp,color: Colors.grey),textScaleFactor: 1.0),),
                  Expanded(
                    flex:1,
                    child: RatingBar.builder(
                      initialRating: 3,
                      minRating: 2,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemSize: 25,
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
