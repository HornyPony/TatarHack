import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tatar_hack/widgets/green_btn.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(),
      body: SafeArea(child: ProfileScreenBody()),
    );
  }
}

class ProfileScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
      ),
      child: Column(
        children: [
          UserMainContainer(),
          UserInfoContainer(),
          Container(
            margin: EdgeInsets.only(
              bottom: 10.h,
            ),
            width: double.infinity,
            color: Theme.of(context).primaryColor,
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                80.w,
                5.h,
                80.w,
                5.h,
              ),
              child: Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF38A042),
                      fixedSize: Size(
                        155.w,
                        33.h,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.r),
                      ),
                    ),
                    onPressed: null,
                    child: Text(
                      'Пройти опрос',
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
                  ),
                  Text(
                    'Пройдите уроки, чтобы получить доступ к опросам',
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class UserMainContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 10.h,
      ),
      color: Theme.of(context).primaryColor,
      height: 140.h,
      child: Padding(
        padding: EdgeInsets.only(
          left: 26.w,
          top: 26.h,
        ),
        child: Column(
          children: [
            Row(
              children: [
                userAvatar(),
                SizedBox(
                  width: 40.w,
                ),
                Column(
                  children: [
                    userName(),
                    SizedBox(
                      height: 3.h,
                    ),
                    userTatarLvl(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget userAvatar() {
    return Container(
      height: 100.h,
      width: 96.w,
      child: Stack(
        children: [
          userPhoto(),
          Positioned(
            bottom: 6.h,
            right: 10.w,
            child: userLastAchievement(),
          )
        ],
      ),
    );
  }

  Widget userPhoto() {
    return Container(
      width: 90.w,
      height: 90.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(
            'assets/images/user_photo.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget userLastAchievement() {
    return GestureDetector(
      child: Container(
        width: 30.w,
        height: 30.w,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          'assets/images/syuyumbike_small.png',
        ),
      ),
    );
  }

  Widget userName() {
    return Text(
      'Наталья S',
      style: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
    );
  }

  Widget userTatarLvl() {
    return Text(
      'Уровень А1',
      style: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: Color(0xFF82ABA2),
      ),
    );
  }
}

class UserInfoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 10.h,
      ),
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          10.w,
          17.h,
          10.w,
          24.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            userInfoTitle('О себе:'),
            SizedBox(
              height: 12.h,
            ),
            userInfoFact(
              'Хотела бы узнать больше необычных слов. Хорошо знаю английский, могу помочь',
            ),
            SizedBox(
              height: 18.h,
            ),
            userInfoTitle('Любимая музыка:'),
            SizedBox(
              height: 12.h,
            ),
            userInfoFact(
              'Lumen, Louna, Tokio Hotel',
            ),
            SizedBox(
              height: 18.h,
            ),
            userInfoTitle('Любимые телешоу:'),
            SizedBox(
              height: 12.h,
            ),
            userInfoFact(
              'Галилео',
            ),
            SizedBox(
              height: 18.h,
            ),
            userInfoTitle('Любимые книги:'),
            SizedBox(
              height: 12.h,
            ),
            userInfoFact(
              '1984',
            ),
            SizedBox(
              height: 18.h,
            ),
            userInfoTitle('Любимые игры:'),
            SizedBox(
              height: 12.h,
            ),
            userInfoFact(
              'GRID',
            ),
          ],
        ),
      ),
    );
  }

  Widget userInfoTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 12.sp,
        color: Color(0xFF91CAB5),
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Widget userInfoFact(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 10.sp,
        color: Color(0xFFBBFFE7),
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
