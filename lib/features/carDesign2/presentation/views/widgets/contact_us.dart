import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/colors.dart';
import '../../../../../core/common_wiget/custom_text.dart';
import '../../../../../core/svg.dart';
class ContactUsBar extends StatelessWidget {
  const ContactUsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsetsDirectional.only(bottom: 150.h,start: 10.w,end: 10.w,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          GestureDetector(
            onTap: (){},
            child: Container(
              height: 40.h,
              width: 120.w,
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.circular(50.r),
                border: Border.all(
                  color: kHomeFilterColor,
                  width: 1.2,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  CustomText(
                    text: "احجز السارة",
                    fontSize: 15.sp,
                    color: kHomeFilterColor,
                    textAlign: TextAlign.center,
                    alignment: Alignment.center,
                    fontWeight: FontWeight.bold,
                  ),
                  SvgPicture.asset(
                    icoBook,
                    width: 18.w,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){},
            child: Container(
              height: 40.h,
              width: 120.w,
              decoration: BoxDecoration(
                color: kHomeFilterColor,
                borderRadius: BorderRadius.circular(50.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  CustomText(
                    text: "موقع السيارة",
                    fontSize: 15.sp,
                    color: kWhite,
                    textAlign: TextAlign.center,
                    alignment: Alignment.center,
                    fontWeight: FontWeight.bold,
                  ),
                  Icon(Icons.location_pin,color: kWhite,size: 25.sp),
                ],
              ),
            ),
          ),

          GestureDetector(
            onTap: (){},
            child: CircleAvatar(
              backgroundColor: kPurple,
              radius: 25.r,
              child: SvgPicture.asset(
                icoChat,
                width: 20.w,
              ),
            ),
          ),
          GestureDetector(
            onTap: (){},
            child: CircleAvatar(
              backgroundColor: kGreen,
              radius: 25.r,
              child: SvgPicture.asset(
                icoCall,
                width: 20.w,
              ),
            ),
          ),

        ],
      ),
    );
  }
}