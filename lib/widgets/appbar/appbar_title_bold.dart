import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppbarTitleBold extends StatelessWidget {
  final String title;

  AppbarTitleBold({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Theme.of(context).primaryColor,
        fontWeight: FontWeight.bold,
        fontFamily: 'SF-Pro',
        fontSize: 24.sp,
      ),
    );
  }
}
