import 'package:flutter/material.dart';

import '../../../../../core/images.dart';

class CarFooter extends StatelessWidget {
  const CarFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        Container(
        child: Image.asset(
          imCar2,
          height: 160,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
    );
  }
}
