import 'package:flutter/material.dart';
import 'package:car_design/core/colors.dart';

class SearchFilter extends StatelessWidget {
  const SearchFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: const Stack(
        alignment: Alignment.center,
        children: [
          TextField(
            textDirection: TextDirection.rtl,
            decoration: InputDecoration(
              iconColor: kiconandtext,
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(11)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kgrayborder), // Set the border color to gray
                borderRadius: BorderRadius.all(Radius.circular(11)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kgrayborder), // Set the border color to gray
                borderRadius: BorderRadius.all(Radius.circular(11)),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            ),
          ),
          Positioned(
            top: 12,
            child: Text(
              'ابحث عن سيارتك',
              style: TextStyle(
                  color: kiconandtext, // Match this to your label color
                  fontSize: 18,
                  fontWeight: FontWeight.bold // Adjust the size as needed
              ),
            ),
          ),
        ],
      ),
    );
  }
}
