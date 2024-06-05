import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../core/colors.dart';
import '../../../../../core/constants_text.dart';
import '../../../../../core/svg.dart';
import 'car_icon.dart';
import 'car_item.dart';
class CarDetailsCustomAppBar extends StatelessWidget {
  const CarDetailsCustomAppBar({
    Key? key,
    required this.image,
    required this.year,
    required this.kms,
  }) : super(key: key);

  final String image;
  final String year;
  final String kms;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0,
      pinned: true,
      centerTitle: false,
      stretch: true,
      expandedHeight: 350.h,
      backgroundColor: kWhite,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Row(
            children: [
              CarDetailsIcon(
                size: 30.w,
                icon: Icons.heart_broken,

                onTap: (){},
              ),
              SizedBox(width: 20.h,),
              CarDetailsIcon(
                size: 30.w,
                icon: Icons.send_rounded,
                onTap: (){},
              ),

            ],
          ),

          CarDetailsIcon(
            icon: Icons.arrow_forward,
            size: 25.w,
            onTap: (){Get.back();},
          ),
        ],
      ),
      flexibleSpace: FlexibleSpaceBar(
        stretchModes: const [
          StretchMode.zoomBackground,
          StretchMode.fadeTitle,
        ],
        background: Stack(
          children: [
            SizedBox(
              height: 325.h,
              width: double.infinity,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Positioned(
              bottom: -5,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CarDetailsItem(
                      icon: icoHomeAd4,
                      label: tInsurance,
                      num: '6',
                    ),
                    SizedBox(width: 10.w,),
                    CarDetailsItem(
                      icon: icoHomeAd2,
                      label: tModel,
                      num: year,
                    ),
                    SizedBox(width: 10.w,),
                    CarDetailsItem(
                      icon: icoSlindr,
                      label: tKms,
                      num: kms,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}