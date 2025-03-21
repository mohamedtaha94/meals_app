import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MealItemTrait extends StatelessWidget {
  const MealItemTrait({
    super.key,
    required this.icon,
    required this.label,
  });
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 16.r,
          color: Colors.white,
        ),
        SizedBox(width: 2.w),
        Text(
          label,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
