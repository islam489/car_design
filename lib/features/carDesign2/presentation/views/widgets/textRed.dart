import 'package:car_design/core/colors.dart';
import 'package:car_design/core/common_wiget/custom_text.dart';
import 'package:car_design/core/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/svg.dart';
class TextRed extends StatelessWidget {
  const TextRed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red, // Set the background color to red
          border: Border.all(
            color: Colors.red, // Set the border color to red
            width: 2.0, // Set the border width (optional)
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20.0), // Set the border radius for rounded corners
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomText(text: "مكفولة حتي 7000 كم ", fontSize: 20,color: kWhite,),
              SizedBox(width: 10,),
              SvgPicture.asset(icoHomeAd4,color: kWhite,),
            ],
          ),
        ),
      ),
    );
  }
}
