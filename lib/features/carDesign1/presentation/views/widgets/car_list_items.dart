import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/colors.dart';
import '../../../../../core/common_wiget/custom_text.dart';
import '../../../../../core/constants_text.dart';
import '../../../../../core/svg.dart';
import 'car_list_label_item.dart';

class CarsListItem extends StatelessWidget {
  const CarsListItem({
    Key? key,
    required this.title,
    required this.image,
    required this.price,
    required this.year,
    required this.kms,
    required this.insurance,
  }) : super(key: key);
  final String title;
  final String image;
  final String price;
  final String year;
  final String kms;
  final String insurance;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
            border: Border.all(
              color: Colors.transparent,
              width: 1,
            ),
          ),
          child: Column(
            children: [
              Container(
                height: 40.h,
                color: kBluewhite,
                child: CustomText(
                  text: title,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: kBlack,
                  alignment: Alignment.center,
                ),
              ),
              Image.asset(
                image,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 165.h,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: -5,
          child: Row(
            children:  [
              CarsListLabelItem(icon: icoHomeAd1,label: tPrice,num: price,),
              SizedBox(width: 2.w),
              CarsListLabelItem(icon: icoHomeAd2,label: tModel,num: year,),
              SizedBox(width: 2.w),
              CarsListLabelItem(icon: icoHomeAd3,label: tKms,num: kms),
              SizedBox(width: 2.w),
              CarsListLabelItem(icon: icoHomeAd4,label: tInsurance,num: insurance,),
            ],
          ),
        ),
      ],
    );
  }
}