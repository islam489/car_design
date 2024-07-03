import 'package:car_design/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common_wiget/custom_text.dart';
class CarTexts extends StatelessWidget {
  const CarTexts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal:10 ,vertical: 20),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [

                  CustomText(text: ' د.ك ',fontSize: 22,color: kBlack1,),
                  SizedBox(width: 5.w,),
                  CustomText(text: '8,700 ', fontSize: 25,fontWeight: FontWeight.bold,color: kBlack,),
                  SizedBox(width: 30.w),
                ],
              ),


            ],
          ),
          SizedBox(width: 35.w),
          CustomText(text: 'يوكن بحالة جيدة', fontSize: 22,color: kBlack1,),
          SizedBox(width: 10.w),

        ],
      ),
    );
  }
}
