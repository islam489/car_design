import 'package:car_design/core/colors.dart';
import 'package:car_design/core/common_wiget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ContentText extends StatelessWidget {
  const ContentText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    Padding(
      padding:  EdgeInsets.only(left:15.w ,right:5.w,top:5.h ,bottom:5.h ),
      child: CustomText(

        text: 'رنجات الومنيوم 18 انش اسود وكروم ديكور خشب مقعد السائق كهربي تحكم مع تعديل يدوي نش اسود وكروم ديكور خشب مقعد السائق كهربي تحكم مع تعديل يدو نش اسود وكروم ديكور ي تحكم مع تعديل يدوديكور خشب مقعد السائق كهربي تحكم مع تعديل يدوديكور خشب مقعد  مع تعديل يد وديكورعديل يدوديكور خشب مقعد   ', fontSize: 18,fontWeight:FontWeight.bold ,color: kBlack1,),
    );
  }
}
