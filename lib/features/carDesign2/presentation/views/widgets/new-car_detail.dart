import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/colors.dart';
import '../../../../../core/common_wiget/custom_text.dart';
import '../../../../../core/svg.dart';
class CarTextDetails extends StatelessWidget {
  const CarTextDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal:5 ,vertical:15 ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:8 ,vertical: 2),
            child: Container(
              decoration: BoxDecoration(
                color: kgray, // Set the background color to red
                border: Border.all(
                  color: kgray, // Set the border color to red
                  width: 2.0, // Set the border width (optional)
                ),

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomText(text: 'ابيض', fontSize: 20,color: kBlack,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomText(text: 'اللون الخارجي', fontSize: 20,color: kBlack,),
                      SizedBox(width: 15,),
                      SvgPicture.asset(icoChat,color: kBlack,width: 17,height: 17,),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:8 ,vertical: 2),
            child: Container(
              decoration: BoxDecoration(
                color: kgray, // Set the background color to red
                border: Border.all(
                  color: kgray, // Set the border color to red
                  width: 2.0, // Set the border width (optional)
                ),

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomText(text: 'بيج', fontSize: 20,color: kBlack,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomText(text: 'اللون الداخلي', fontSize: 20,color: kBlack,),
                      SizedBox(width: 15,),
                      SvgPicture.asset(icoSlindr,color: kBlack,width: 17,height: 17,),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:8 ,vertical: 2),
            child: Container(
              decoration: BoxDecoration(
                color: kgray, // Set the background color to red
                border: Border.all(
                  color: kgray, // Set the border color to red
                  width: 2.0, // Set the border width (optional)
                ),

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomText(text: 'مخمل', fontSize: 20,color: kBlack,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomText(text: 'نوع المقعد', fontSize: 20,color: kBlack,),
                      SizedBox(width: 15,),
                      SvgPicture.asset(icoChat,color: kBlack,width: 17,height: 17,),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:8 ,vertical: 2),
            child: Container(
              decoration: BoxDecoration(
                color: kgray, // Set the background color to red
                border: Border.all(
                  color: kgray, // Set the border color to red
                  width: 2.0, // Set the border width (optional)
                ),

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomText(text: '✓', fontSize: 20,color: kBlack,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomText(text: 'فتحة سقف', fontSize: 20,color: kBlack,),
                      SizedBox(width: 15,),
                      SvgPicture.asset(icoFav,color: kBlack,width: 17,height: 17,),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:8 ,vertical: 2),
            child: Container(
              decoration: BoxDecoration(
                color: kgray, // Set the background color to red
                border: Border.all(
                  color: kgray, // Set the border color to red
                  width: 2.0, // Set the border width (optional)
                ),

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomText(text: '✓', fontSize: 20,color: kBlack,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomText(text: 'كاميرا خلفية', fontSize: 20,color: kBlack,),
                      SizedBox(width: 15,),
                      SvgPicture.asset(icoSlindr,color: kBlack,width: 17,height: 17,),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:8 ,vertical: 2),
            child: Container(
              decoration: BoxDecoration(
                color: kgray, // Set the background color to red
                border: Border.all(
                  color: kgray, // Set the border color to red
                  width: 2.0, // Set the border width (optional)
                ),

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomText(text: 'ابيض', fontSize: 20,color: kBlack,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomText(text: 'اللون الخارجي', fontSize: 20,color: kBlack,),
                      SizedBox(width: 15,),
                      SvgPicture.asset(icoChat,color: kBlack,width: 17,height: 17,),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:8 ,vertical: 2),
            child: Container(
              decoration: BoxDecoration(
                color: kgray, // Set the background color to red
                border: Border.all(
                  color: kgray, // Set the border color to red
                  width: 2.0, // Set the border width (optional)
                ),

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomText(text: 'بيج', fontSize: 20,color: kBlack,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomText(text: 'اللون الداخلي', fontSize: 20,color: kBlack,),
                      SizedBox(width: 15,),
                      SvgPicture.asset(icoSlindr,color: kBlack,width: 17,height: 17,),
                    ],
                  )
                ],
              ),
            ),
          ),


        ],
      ),
    );
  }
}
