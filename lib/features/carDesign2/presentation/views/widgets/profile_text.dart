import 'package:car_design/core/colors.dart';
import 'package:car_design/core/common_wiget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/images.dart';
import '../../../../../core/svg.dart';
class TextProfile extends StatelessWidget {
  const TextProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding:  EdgeInsets.only(left:20.w ,right:10.w ),
      child: Container(
       height: 50.h,
        decoration: BoxDecoration(
          color: kgraycar, // Set the background color to red
          border: Border.all(
            color: kgraycar, // Set the border color to red
            width: 2.0, // Set the border width (optional)
          ),


          borderRadius: BorderRadius.all(
            Radius.circular(12.0), // Set the border radius for rounded corners
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomText(text: ' كل السيارات ', fontSize: 20,color: kBlack1,),
            CustomText(text: 'يوكن للسيارات المعتمدة', fontSize: 20,color: kBlack1,),


            Container(

              height: 40.h,
              width: 40.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: kWhite, // Set the outer border color
                  width: 4, // Set the outer border width
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: Image.asset(imCar7, fit: BoxFit.contain), // Use fit to ensure the image covers the entire container
              ),
            ),

          ],
        ),
      ),
    );
  }
}
