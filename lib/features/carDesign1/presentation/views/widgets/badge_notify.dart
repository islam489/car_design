import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/colors.dart';

class NotificationIconWithBadge extends StatelessWidget {
  final String svgPath;
  final int badgeCount;

  const NotificationIconWithBadge({
    Key? key,
    required this.svgPath,
    required this.badgeCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          child: SvgPicture.asset(
            svgPath,
            color: Colors.white,
            height: 30, // Adjust the size as needed
            width: 30,
          ),
        ),
        if (badgeCount > 0)
          Positioned(
            right: 0,
            top: 0,
            bottom: 22,
            left: 20,
            child: Container(
              decoration: BoxDecoration(
                color: kbadge,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.white, // White border color
                  width: 2, // Border width
                ),
              ),
              constraints: const BoxConstraints(
                minWidth: 20,
                minHeight: 20,
              ),
              child: Center(
                child: Text(
                  badgeCount.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
