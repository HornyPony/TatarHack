import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: welcomeScreenAppbar(),
      body: SafeArea(
        child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black, Color(0xFF2B8A34)],
              ),
            ),
            child: WelcomeScreenBody()),
      ),
    );
  }

  welcomeScreenAppbar() {
    return AppBar();
  }
}

class WelcomeScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 230.w,
        height: 170.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(35.r),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(15.w, 15.w, 15.w, 0),
          child: Column(
            children: [
              welcomeTextTitle(),
              SizedBox(
                height: 6.h,
              ),
              welcomeTextFact(),
              SizedBox(
                height: 10.h,
              ),
              okBtn(),
            ],
          ),
        ),
      ),
    );
  }

  Widget welcomeTextTitle() {
    return Text(
      'Добро пожаловать!',
      style: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
        color: Color(0xFF38A042),
        shadows: <Shadow>[
          Shadow(
            offset: Offset(-1, 0),
            blurRadius: 0,
            color: Color(0xFF000000).withOpacity(0.74),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget welcomeTextFact() {
    return Container(
      width: 158.w,
      child: Text(
        'Для начала, выберите все слова, которые Вам знакомы',
        style: TextStyle(
          fontSize: 14.sp,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget okBtn() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color(0xFF38A042),
        fixedSize: Size(
          140.w,
          30.h,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.r),
        ),
      ),
      onPressed: () {},
      child: Text(
        'OK',
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
