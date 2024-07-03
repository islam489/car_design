import 'package:flutter/material.dart';

import '../../../../../core/images.dart';

class CarBannerHeader extends StatelessWidget {
  const CarBannerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
       Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Image.asset(
          imCar6,
          height: 175,
          width: double.infinity,
          fit: BoxFit.cover,
        ),

    );
  }
}
