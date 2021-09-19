import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tatar_hack/screens/fairy_tale/fairy_tale_list_screen.dart';
import 'package:tatar_hack/screens/profile_screen.dart';

class CustomAppbar {
  static appBarWithProfile(BuildContext context) {
    return AppBar(
      title: Text(
        'Едем в Татарстан',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 14.sp,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProfileScreen(),
              ),
            );
          },
          icon: Icon(
            Icons.settings,
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => FairyTalesScreen(),
              ),
            );
          },
          icon: Icon(
            Icons.book,
          ),
        ),
      ],
    );
  }

  static appBarWithoutProfile(BuildContext context) {
    return AppBar(
      title: Text(
        'Едем в Татарстан',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 14.sp,
        ),
      ),
    );
  }
}
