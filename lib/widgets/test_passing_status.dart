import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TestPassingStatus extends StatelessWidget {
  final String image;

  TestPassingStatus({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210.w,
      height: 31.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
        ),
      ),
    );
  }
}
