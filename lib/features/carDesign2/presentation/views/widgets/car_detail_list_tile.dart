import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/colors.dart';

class CarInfo extends StatelessWidget {
  final List<Map<String, dynamic>> carDetails = [
    {'icon': Icons.directions_car, 'label': 'اللون الخارجي', 'value': 'أبيض'},
    {'icon': Icons.chair, 'label': 'اللون الداخلي', 'value': 'بيج'},
    {'icon': Icons.event_seat, 'label': 'نوع المقعد', 'value': 'مخمل'},
    {'icon': Icons.camera_rear, 'label': 'كاميرا خلفية', 'value': "✔"},
    {'icon': Icons.sensors, 'label': 'سنسر', 'value': 'أمامي '},
    {'icon': Icons.camera_rear, 'label': 'سليندر', 'value': '6'},
    {'icon': Icons.settings, 'label': 'ناقل الحركة', 'value': 'اوتوماتيك'},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Column(
          children: carDetails.map((detail) {
            return Column(
              children: [
                Container(
                  height: 43.h,
                  color: kWhitedark,
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Padding(
                      padding:  EdgeInsets.only(left: 50.w, right: 10.w, top: 0.h, bottom: 5.h),
                      child: ListTile(
                        leading: Icon(detail['icon'], size: 22),
                        title: Text(detail['label'], style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                        trailing: Text(

                          detail['value'].toString(),
                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white, // لون الفاصل
                  thickness: 1.5,    // سمك الفاصل
                  height: 1.0,       // ارتفاع الفاصل
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
