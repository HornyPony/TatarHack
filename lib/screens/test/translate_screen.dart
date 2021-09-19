import 'package:flutter/material.dart';
import 'package:tatar_hack/screens/test/listening_screen.dart';
import 'package:tatar_hack/widgets/test_passing_status.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TranslateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(),
      body: SafeArea(child: TranslateScreenBody()),
    );
  }
}

class TranslateScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        10.w,
        20.h,
        10.w,
        0,
      ),
      child: Column(
        children: [
          TestPassingStatus(image: 'assets/images/translate_selected.png'),
          SizedBox(
            height: 60.h,
          ),
          tatarWord(context),
          SizedBox(
            height: 60.h,
          ),
          Flexible(
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 20.w,
              crossAxisSpacing: 20.w,
              children: [
                wordTranslationContainer(
                  context,
                  'assets/images/triangle.png',
                  'Треугольник',
                ),
                wordTranslationContainer(
                  context,
                  'assets/images/shop.png',
                  'Продукты',
                ),
                wordTranslationContainer(
                  context,
                  'assets/images/bus_stop.png',
                  'Остановка',
                ),
                wordTranslationContainer(
                  context,
                  'assets/images/pharmacy_image.png',
                  'Аптека',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget tatarWord(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 43.h,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      child: Center(
        child: Text(
          'Даруханэ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  Widget wordTranslationContainer(
      BuildContext context, String image, String translation) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => ListeningScreen(),
          ),
        );
      },
      child: Container(
        height: 152.h,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(14.r),
        ),
        child: Column(
          children: [
            wordTranslationImage(image),
            SizedBox(
              height: 16.h,
            ),
            wordTranslationText(translation)
          ],
        ),
      ),
    );
  }

  Widget wordTranslationImage(String image) {
    return Container(
      width: double.infinity,
      height: 120.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(14.r),
          topRight: Radius.circular(14.r),
        ),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget wordTranslationText(String text) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 13.sp,
        color: Colors.white,
      ),
    );
  }
}
