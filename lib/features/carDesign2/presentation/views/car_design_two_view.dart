import 'package:car_design/core/images.dart';
import 'package:car_design/features/carDesign2/presentation/views/widgets/car_app_bar.dart';
import 'package:car_design/features/carDesign2/presentation/views/widgets/car_detail_list_tile.dart';
import 'package:car_design/features/carDesign2/presentation/views/widgets/car_grid.dart';
import 'package:car_design/features/carDesign2/presentation/views/widgets/car_texts.dart';
import 'package:car_design/features/carDesign2/presentation/views/widgets/contact_us.dart';
import 'package:car_design/features/carDesign2/presentation/views/widgets/new-car_detail.dart';
import 'package:car_design/features/carDesign2/presentation/views/widgets/profile_text.dart';
import 'package:car_design/features/carDesign2/presentation/views/widgets/textRed.dart';
import 'package:car_design/features/carDesign2/presentation/views/widgets/text_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/colors.dart';

class CarDesignOneView extends StatelessWidget {
  const CarDesignOneView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: CustomScrollView(
        slivers: [
          CarDetailsCustomAppBar(image: imCar11, year: "2019", kms: "2000"),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                  const CarTexts(),
                 const TextRed(),
                 const CarTextDetails(),
                 const ContentText(),
                 const CarGridView(),
                 SizedBox(height: 25,),
                 const ContactUsBar(),
             ]
              ),


          ),],
      ),
    );
  }
}