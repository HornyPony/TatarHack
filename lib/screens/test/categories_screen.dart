import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tatar_hack/screens/test/listening_screen.dart';
import 'package:tatar_hack/screens/test/voicing_words_screen.dart';
import 'package:tatar_hack/widgets/appbar/app_bar_with_profile.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: CustomAppbar.appBarWithProfile(context),
      body: CategoriesScreenBody(),
    );
  }
}

class CategoriesScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        10.w,
        20.h,
        10.w,
        0,
      ),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 20.w,
        crossAxisSpacing: 20.w,
        children: [
          categoryContainer(
            'Семья и друзья',
            0,
            context,
          ),
          categoryContainer(
            'Части тела',
            5,
            context,
          ),
          categoryContainer(
            'Жизнь',
            0,
            context,
          ),
          categoryContainer(
            'Частые фразы',
            0,
            context,
          ),
          categoryContainer(
            'Я еду в Татарстан',
            0,
            context,
          ),
          categoryContainer(
            'Еда',
            0,
            context,
          ),
        ],
      ),
    );
  }

  Widget categoryContainer(
    String categoryTitle,
    double categoryProgress,
    BuildContext context,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => VoicingWordsScreen(),
          ),
        );
      },
      child: Container(
        width: 160.w,
        height: 160.w,
        color: Theme.of(context).primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              categoryTitle,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              '${categoryProgress.toInt()}/20',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: LinearProgressIndicator(
                value: categoryProgress * 1 / 20,
                valueColor: AlwaysStoppedAnimation(Color(0xFF00E1C6)),
                backgroundColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
