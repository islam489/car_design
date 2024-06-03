import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/colors.dart';

class CarCustomAppBar extends StatelessWidget {
  const CarCustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: kPrimary,
      floating: true,
      automaticallyImplyLeading: false,
      elevation: 0,
      pinned: true,
      centerTitle: false,
      stretch: true,
      snap: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: Icon(
              Icons.menu,
              color: kBlack,
              size: 30.sp,
            ),
            onTap: (){},
          ),
          GestureDetector(
            child: Icon(
              Icons.search,
              color: kBlack,
              size: 30.sp,
            ),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}