import 'package:car_design/core/colors.dart';
import 'package:flutter/material.dart';
class SearchFilter extends StatelessWidget {
  const SearchFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(

      padding:  EdgeInsets.all(16),
      child:  const TextField(
        decoration: InputDecoration(
          iconColor: kBlack1,
          prefixIcon: Icon(Icons.search),
          labelText: 'Search about Car',
          border: OutlineInputBorder(

            borderRadius: BorderRadius.all(Radius.circular(20))

          ),

        ),
      ),
    );;
  }
}
