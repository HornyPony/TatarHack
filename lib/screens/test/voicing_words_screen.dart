import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tatar_hack/screens/test/translate_screen.dart';
import 'package:tatar_hack/widgets/green_btn.dart';
import 'package:tatar_hack/widgets/test_passing_status.dart';

class VoicingWordsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(),
      body: SafeArea(child: VoicingWordsBody()),
    );
  }
}

class VoicingWordsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10.w,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 17.h,
            ),
            TestPassingStatus(image: 'assets/images/all_unselected.png'),
            SizedBox(
              height: 17.h,
            ),
            voicingContainer(context),
            voicingContainer(context),
            voicingContainer(context),
            voicingContainer(context),
            GreenBtn(
              width: 175.w,
              height: 37.h,
              text: 'Начать урок',
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => TranslateScreen(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  Widget voicingContainer(BuildContext context) {
    return Container(
      height: 110.h,
      color: Theme.of(context).primaryColor,
      margin: EdgeInsets.only(
        bottom: 10.h,
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          9.w,
          5.h,
          0,
          0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                wordImage(),
                SizedBox(
                  width: 25.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    wordInTatar(),
                    SizedBox(
                      height: 6.h,
                    ),
                    wordInRussian(),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  'assets/images/info_icon.png',
                  width: 26.w,
                  height: 26.w,
                ),
                voicingBtn(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget wordImage() {
    return Container(
      width: 110.w,
      height: 90.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/pharmacy_image.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget wordInTatar() {
    return Text(
      'Даруханэ',
      style: TextStyle(
        color: Colors.white,
        fontSize: 18.sp,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Widget wordInRussian() {
    return Text(
      'Аптека',
      style: TextStyle(
        color: Color(0xFF00B812),
        fontSize: 13.sp,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Widget voicingBtn() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        elevation: 0,
      ),
      child: Image.asset(
        'assets/images/voice_icon.png',
        width: 24.w,
        height: 24.w,
      ),
    );
  }
}
