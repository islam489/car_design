import 'package:car_design/core/colors.dart';
import 'package:flutter/material.dart';
class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      padding:  EdgeInsets.all(16),
      child:  const TextField(
        decoration: InputDecoration(
          iconColor: kBlack1,
          labelText: 'ابحث عن سيارتك',
          border: OutlineInputBorder(

          ),
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );;
  }
}
