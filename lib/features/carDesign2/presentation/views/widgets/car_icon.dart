import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/colors.dart';
class CarDetailsIcon extends StatelessWidget {
  final double size;
  final Widget icon;
  final VoidCallback onTap;

  const CarDetailsIcon({
    Key? key,
    required this.size,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kiconcolor,
        ),
        child: Center(child: icon),
      ),
    );
  }
}