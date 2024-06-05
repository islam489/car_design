import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/colors.dart';
class CarDetailsIcon extends StatelessWidget {
  const CarDetailsIcon({
    Key? key,
    required this.icon,
    required this.onTap,
    required this.size,
  }) : super(key: key);
  final IconData icon;
  final double size;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: kgray,
        radius: 25.r,
        child: Icon(icon,size: size,color: kBlack1,),
      ),
    );
  }
}