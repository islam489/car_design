import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/colors.dart';
import '../../../../../core/common_wiget/custom_text.dart';

class CarsListLabelItem extends StatelessWidget {
  const CarsListLabelItem({
    Key? key,
    required this.icon,
    required this.num,
    required this.label,
  }) : super(key: key);
  final String icon;
  final String num;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: 44.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: kWhite,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding:  EdgeInsetsDirectional.only(start: 10.w,end: 10.w,),
            child: SvgPicture.asset(icon,width: 25.w,color: kBlack,),
          ),
          CustomText(
            text: label,
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
            color: kBlack,
          ),
          CustomText(
            text: num,
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
            color: kBlack,
          ),
        ],
      ),
    );
  }
}