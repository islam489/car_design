import 'package:flutter/material.dart';

import '../../../../../core/colors.dart';
import '../../../../../core/images.dart';

class VechileCategories extends StatelessWidget {
  const VechileCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
       SizedBox(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            _buildCategoryItem(imCar1, 'BMW',),
            _buildCategoryItem(imCar11, 'Toyota'),
            _buildCategoryItem(imCar1, 'Chevrolet'),
            _buildCategoryItem(imCar11, 'BMW'),
            _buildCategoryItem(imCar1, 'Toyota'),
            _buildCategoryItem(imCar11, 'Chevrolet'),

            // Add more categories as needed
          ],
        ),

    );
  }
}

Widget _buildCategoryItem(String assetPath, String label) {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          border: Border.all(
            color: kborder, // Set the border color here
            width: 2.0, // Set the border width
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(35),

          child: Image.asset(assetPath, fit: BoxFit.cover), // Use fit to ensure the image covers the entire container
        ),
      ),
      Text(
        label,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 20, // Set the font size
          fontWeight: FontWeight.bold, // Set the font weight to bold
        ),
      ),
    ],
  );
}
