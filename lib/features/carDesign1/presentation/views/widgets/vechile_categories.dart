import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/colors.dart';
import '../../../../../core/images.dart';




class VechileCategories extends StatelessWidget {
  const VechileCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildCategoryItem(imCar1, 'جيلي'),
          _buildCategoryItem(imCar11, 'جيلي'),
          _buildCategoryItem(imCar1, 'تويوتا'),
          _buildCategoryItem(imCar11, 'بي ام دابليو'),
          _buildCategoryItem(imCar1, 'جيلي'),
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
        margin: const EdgeInsets.symmetric(horizontal: 12),
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: kborder, // Set the outer border color
            width: 2, // Set the outer border width
          ),
        ),
        child: Container(
          margin: const EdgeInsets.all(4.0), // Space between outer and inner border
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: kWhite, // Set the inner border color
              width: 0.3, // Set the inner border width
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: Image.asset(assetPath, fit: BoxFit.cover), // Use fit to ensure the image covers the entire container
          ),
        ),
      ),
      Text(
        label,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 14, // Set the font size
          fontWeight: FontWeight.bold, // Set the font weight to bold
        ),
      ),
    ],
  );
}
