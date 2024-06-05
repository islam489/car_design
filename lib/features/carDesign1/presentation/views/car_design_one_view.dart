import 'package:car_design/core/colors.dart';
import 'package:car_design/features/carDesign1/presentation/views/widgets/car_banner_header.dart';
import 'package:car_design/features/carDesign1/presentation/views/widgets/car_footer.dart';
import 'package:car_design/features/carDesign1/presentation/views/widgets/car_grid_view_details.dart';
import 'package:car_design/features/carDesign1/presentation/views/widgets/category_buttons.dart';
import 'package:car_design/features/carDesign1/presentation/views/widgets/vechile_categories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CarDesignOneView extends StatefulWidget {
  const CarDesignOneView({Key? key}) : super(key: key);

  @override
  State<CarDesignOneView> createState() => _CarDesignOneViewState();
}

class _CarDesignOneViewState extends State<CarDesignOneView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: kBlack1,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.notifications,color: kWhite,),
            Icon(Icons.menu,color: kWhite,),
          ],
        ),
      ),
      body:   SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 5),
            const VechileCategories(),
            const CarBannerHeader(),
            const SizedBox(height: 15,),
            const SearchBar(),
            const SizedBox(height: 15,),
            const CategoryButtons(),
            const SizedBox(height: 15,),
            const CarGridViewDetails(),
            const CarFooter(),
          ],
        ),
      ),
    );
  }
}










