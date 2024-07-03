import 'package:car_design/core/colors.dart';
import 'package:car_design/features/carDesign1/presentation/views/widgets/badge_notify.dart';
import 'package:car_design/features/carDesign1/presentation/views/widgets/car_banner_header.dart';
import 'package:car_design/features/carDesign1/presentation/views/widgets/car_footer.dart';
import 'package:car_design/features/carDesign1/presentation/views/widgets/car_grid_view_details.dart';
import 'package:car_design/features/carDesign1/presentation/views/widgets/category_buttons.dart';
import 'package:car_design/features/carDesign1/presentation/views/widgets/search_bar.dart';
import 'package:car_design/features/carDesign1/presentation/views/widgets/vechile_categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../core/svg.dart';
import '../../../../core/theme/theme_mode.dart';

class CarDesignOneView extends StatelessWidget {
  const CarDesignOneView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        backgroundColor: kappbar,
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NotificationIconWithBadge(
            svgPath: icoNotification, // Path to your SVG asset
            badgeCount: 2, // Adjust the badge count here
          ),
            ThemeModeDefault(),

        SvgPicture.asset(
          icoMenu, // Path to your menu SVG asset
          color: Colors.white,
          height: 18, // Adjust the size as needed
          width: 18,
        ),
          ],
        ),
      ),

      body:   const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 17),
            VechileCategories(),
            CarBannerHeader(),
            SearchFilter(),
            CategoryButtons(),
            SizedBox(height: 13,),
            CarGridViewDetails(),
            SizedBox(height: 10,),
            CarFooter(),
          ],
        ),
      ),
    );
  }
}










