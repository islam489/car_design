import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/colors.dart';
import '../../../../../core/common_wiget/custom_text.dart';
class CarDetailsItem extends StatelessWidget {
  const CarDetailsItem({Key? key, required this.icon, required this.num, required this.label}) : super(key: key);
  final String icon;
  final String num;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: 105.w,
      decoration: BoxDecoration(
        color: kcontainercolor,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(icon,width: 40.w,),
            SizedBox(height: 10.h,),
            CustomText(
              text: label,
              fontSize: 15.sp,
              color: ktextlabel,
              fontWeight: FontWeight.bold,


            ),
            SizedBox(height: 5.h,),
            CustomText(
              text: num,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: ktextnum,
            ),
          ],
        ),
      ),
    );
  }
}