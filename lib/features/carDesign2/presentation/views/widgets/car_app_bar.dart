import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
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
                size: 35,
                icon: SvgPicture.asset(icoFav,width: 20.w,), // Replace with your SVG asset path
                onTap: () {},
              ),
              SizedBox(width: 20.w),
              CarDetailsIcon(
                size: 30,
                icon: SvgPicture.asset(icoShare,width: 20.w,), // Replace with your SVG asset path
                onTap: () {},
              ),
            ],
          ),
          CarDetailsIcon(
            icon: SvgPicture.asset(icoShare,width: 20.w,), // Replace with your SVG asset path
            size: 30,
            onTap: () {
              Get.back(); // Example of your onTap function
            },
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
              height: 350.h,
              width: double.infinity,
              child: Image.asset(
                image,
                fit: BoxFit.contain,
                width: double.infinity,
              ),
            ),
            Positioned(
              bottom: -3,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CarDetailsItem(
                      icon: icoHomeAd3,
                      label: tmamsha,
                      num: kms,
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
                      label: tmoharek,
                      num: '6',
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