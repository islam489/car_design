import 'package:car_design/core/colors.dart';
import 'package:car_design/core/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../carDesign2/presentation/views/car_design_two_view.dart';
import 'car_list_items.dart';
import 'car_model.dart';

class CarGridViewDetails extends StatelessWidget {
  const CarGridViewDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Car> cars = [
      Car(
        title: 'جي ام سي | يوكن | الفئةالرابعه',
        image: imCar1,
        price: '1270',
        year: '2019',
        kms: '2000',
        insurance: '2021',
        color: kbrwonwhite1,
      ),
      Car(
        title: 'جي ام سي | يوكن | الفئةالرابعه',
        image: imCar11,
        price: '1270',
        year: '2019',
        kms: '2000',
        insurance: '2021',
        color: kbrwonwhite,
      ),
      Car(
        title: 'جي ام سي | يوكن | الفئةالرابعه',
        image: imCar1,
        price: '1270',
        year: '2019',
        kms: '2000',
        insurance: '2021',
        color: kbrwonwhite1,
      ),
      Car(
        title: 'جي ام سي | يوكن | الفئةالرابعه',
        image: imCar11,
        price: '1270',
        year: '2019',
        kms: '2000',
        insurance: '2021',
        color: kbrwonwhite,
      ),
      Car(
        title: 'جي ام سي | يوكن | الفئةالرابعه',
        image: imCar1,
        price: '1270',
        year: '2019',
        kms: '2000',
        insurance: '2021',
        color: kbrwonwhite1,
      ),
      Car(
        title: 'جي ام سي | يوكن | الفئةالرابعه',
        image: imCar11,
        price: '1270',
        year: '2019',
        kms: '2000',
        insurance: '2021',
        color: kbrwonwhite,
      ),
      // Add more Car objects as needed
    ];

    return
       GestureDetector(
         onTap: (){
           Get.to(const CarDesignOneView());
         },
         child: Padding(
           padding: const EdgeInsets.all(5.0),
           child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
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
         ),
       );
  }
}
