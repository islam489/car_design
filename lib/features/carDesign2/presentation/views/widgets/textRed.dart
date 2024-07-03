import 'package:car_design/core/colors.dart';
import 'package:car_design/core/common_wiget/custom_text.dart';
import 'package:car_design/core/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/svg.dart';
class TextRed extends StatelessWidget {
  const TextRed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: kredtext, // Set the background color to red
          border: Border.all(
            color: kredtext, // Set the border color to red
            width: 1.0, // Set the border width (optional)
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(12.0), // Set the border radius for rounded corners
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 5,top:5 ,right:15 ,bottom:5 ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomText(text: "مكفولة حتي 7000 كم ", fontSize: 25,color: kWhitelight,),
              SizedBox(width: 15.w,),
              SvgPicture.asset(icoHomeAd4,color: kWhitelight, width: 27, height: 27,),
              SizedBox(width: 5.w,),
            ],
          ),
        ),
      ),
    );
  }
}
