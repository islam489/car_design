import 'package:car_design/core/colors.dart';
import 'package:car_design/core/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../carDesign1/presentation/views/widgets/car_list_items.dart';
import '../../../../carDesign1/presentation/views/widgets/car_model.dart';
import '../../../../carDesign2/presentation/views/car_design_two_view.dart';


class CarGridView extends StatelessWidget {
  const CarGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Car> cars = [
      Car(
        title: 'جي ام سي | يوكن | الفئة الرابعه',
        image: imCar1,
        price: '2000',
        year: '2019',
        kms: '1200',
        insurance: '2021',
        color: kbrwonwhite1,
      ),
      Car(
        title: 'جي ام سي | يوكن | الفئة الرابعه',
        image: imCar11,
        price: '1500',
        year: '2018',
        kms: '1000',
        insurance: '2021',
        color: kbrwonwhite,
      ),

      // Add more Car objects as needed
    ];

    return
      Padding(
        padding:  EdgeInsets.only(left: 3.w,right: 3.w,bottom: 0.h,top: 0.h),
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 1.2,
            childAspectRatio: 0.85,
          ),
          itemCount: cars.length, // Use the length of the cars list
          itemBuilder: (context, index) {
            final car = cars[index];
            return CarsListItem(
              title: car.title,
              image: car.image,
              price: car.price,
              year: car.year,
              kms: car.kms,
              insurance: car.insurance,
              color: car.color,
            );
          },

        ),
      );
  }
}
