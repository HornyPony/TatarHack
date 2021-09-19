import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GreenBtn extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final VoidCallback onPressed;

  GreenBtn(
      {required this.width,
      required this.height,
      required this.text,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color(0xFF38A042),
        fixedSize: Size(
          width,
          height,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.r),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          shadows: <Shadow>[
            Shadow(
              offset: Offset(-1, 1),
              blurRadius: 0,
              color: Color(0xFF000000).withOpacity(0.25),
            ),
          ],
        ),
      ),
    );
  }
}
