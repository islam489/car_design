import 'package:flutter/material.dart';

import '../../../../../core/images.dart';

class CarFooter extends StatelessWidget {
  const CarFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Image.asset(
          imCar2,
          height: 125,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
    );
  }
}
