import 'package:car_design/core/colors.dart';
import 'package:car_design/core/common_wiget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/svg.dart';
class TextProfile extends StatelessWidget {
  const TextProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
       height: 50,
        decoration: BoxDecoration(
          color: kgray, // Set the background color to red
          border: Border.all(
            color: kgray, // Set the border color to red
            width: 2.0, // Set the border width (optional)
          ),


          borderRadius: BorderRadius.all(
            Radius.circular(10.0), // Set the border radius for rounded corners
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomText(text: ' كل السيارات ', fontSize: 20,color: kBlack1,),
            CustomText(text: 'يوكن للسيارات المعتمدة', fontSize: 20,color: kBlack1,),

            SvgPicture.asset(icoBook ,color: kBlack1,width: 22,height: 22,)

          ],
        ),
      ),
    );
  }
}
