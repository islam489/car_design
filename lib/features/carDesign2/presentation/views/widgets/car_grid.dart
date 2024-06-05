import 'package:car_design/core/images.dart';
import 'package:flutter/material.dart';
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
        title: 'جي ام سي الفئة الرابعه',
        image: imCar1,
        price: '2000',
        year: '2019',
        kms: '1200',
        insurance: 'bmw',
      ),
      Car(
        title: 'جي ام سي  الفئة الرابعة',
        image: imCar11,
        price: '1500',
        year: '2018',
        kms: '1000',
        insurance: 'toyota',
      ),

      // Add more Car objects as needed
    ];

    return
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 2,
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
            );
          },

        ),
      );
  }
}