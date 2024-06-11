import 'package:car_design/core/colors.dart';
import 'package:car_design/core/common_wiget/custom_text.dart';
import 'package:flutter/material.dart';
class ContentText extends StatelessWidget {
  const ContentText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    Padding(
      padding: const EdgeInsets.symmetric(horizontal:5 ,vertical: 5),
      child: const SizedBox(
        child: CustomText(


          text: 'رنجات الومنيوم 18 انش اسود وكروم ديكور خشب مقعد السائق كهربي تحكم مع تعديل يدوي نش اسود وكروم ديكور خشب مقعد السائق كهربي تحكم مع تعديل يدو نش اسود وكروم ديكور خشب مقعد السائق كهربي تحكم مع تعديل يدوديكور خشب مقعد السائق كهربي تحكم مع تعديل يدوديكور خشب مقعد السائق كهربي تحكم مع تعديل يدوديكور خشب مقعد   ', fontSize: 18,fontWeight:FontWeight.bold ,color: kBlack1,textAlign: TextAlign.center,),
      ),
    );
  }
}
