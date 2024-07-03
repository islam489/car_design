import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/colors.dart';
import '../../../../../core/common_wiget/custom_text.dart';
import '../../../../../core/svg.dart';
class CarTextDetails extends StatelessWidget {
  const CarTextDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(left: 0.w,right: 15.w,top:10.h ,bottom:10.h ),
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(left:0.w ,right:5.w,top:1.h ,bottom:1.h ),
            child: Container(
              decoration: BoxDecoration(
                color: kWhitedark, // Set the background color to red
                border: Border.all(
                  color: kWhitedark, // Set the border color to red
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
                      SvgPicture.asset(icoChat,color: kBlack,width: 17,height: 17,fit: BoxFit.contain,),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left:0.w ,right:5.w,top:1.h ,bottom:1.h ),
            child: Container(
              decoration: BoxDecoration(
                color: kWhitedark, // Set the background color to red
                border: Border.all(
                  color: kWhitedark, // Set the border color to red
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
                      SvgPicture.asset(icoSlindr,color: kBlack,width: 17,height: 17,fit: BoxFit.contain,),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left:0.w ,right:5.w,top:1.h ,bottom:1.h ),
            child: Container(
              decoration: BoxDecoration(
                color: kWhitedark, // Set the background color to red
                border: Border.all(
                  color: kWhitedark, // Set the border color to red
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
                      SvgPicture.asset(icoChat,color: kBlack,width: 17,height: 17,fit: BoxFit.contain,),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left:0.w ,right:5.w,top:1.h ,bottom:1.h ),
            child: Container(
              decoration: BoxDecoration(
                color: kWhitedark, // Set the background color to red
                border: Border.all(
                  color: kWhitedark, // Set the border color to red
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
                      SvgPicture.asset(icoFav,color: kBlack,width: 17,height: 17,fit: BoxFit.contain,),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left:0.w ,right:5.w,top:1.h ,bottom:1.h ),
            child: Container(
              decoration: BoxDecoration(
                color: kWhitedark, // Set the background color to red
                border: Border.all(
                  color: kWhitedark, // Set the border color to red
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
                      SvgPicture.asset(icoSlindr,color: kBlack,width: 17,height: 17,fit: BoxFit.contain,),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left:0.w ,right:5.w,top:1.h ,bottom:1.h ),
            child: Container(
              decoration: BoxDecoration(
                color: kWhitedark, // Set the background color to red
                border: Border.all(
                  color: kWhitedark, // Set the border color to red
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
                      SvgPicture.asset(icoChat,color: kBlack,width: 17,height: 17,fit: BoxFit.contain,),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left:0.w ,right:5.w,top:1.h ,bottom:1.h ),
            child: Container(
              decoration: BoxDecoration(
                color: kWhitedark, // Set the background color to red
                border: Border.all(
                  color: kWhitedark, // Set the border color to red
                  width: 2.0, // Set the border width (optional)
                ),

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomText(text: 'بيج', fontSize: 20,color: kBlack,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomText(text: 'اللون الداخلي', fontSize: 20,color: kBlack,),
                      SvgPicture.asset(icoSlindr,color: kBlack,width: 17,height: 17,fit: BoxFit.contain,),
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
