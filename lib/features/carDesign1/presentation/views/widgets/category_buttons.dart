import 'package:car_design/core/colors.dart';
import 'package:car_design/core/common_wiget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common_wiget/custom_button.dart';

class CategoryButtons extends StatelessWidget {
  const CategoryButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            color: kBlack1,
            onTap: () {

            },
            child: const CustomText( text: 'أمريكي', fontSize: 20,color: kWhite,),),
          SizedBox(width: 15.w,),
          CustomButton(
            color: kBlack1,
            onTap: () {

            },
            child: const CustomText( text: 'أوروبي', fontSize: 20,color: kWhite,)),
          SizedBox(width: 15.w,),

          CustomButton(
            color: kBlack1,
            onTap: () {

            },
            child: const CustomText( text: 'أسيوي', fontSize: 20,color: kWhite,),),


        ],

    );
  }
}
