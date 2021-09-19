import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tatar_hack/widgets/appbar/app_bar_with_profile.dart';

class FairyTalesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar.appBarWithProfile(context),
      body: FairyTalesScreenBody(),
    );
  }
}

class FairyTalesScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF00231B),
      child: Padding(
        padding: EdgeInsets.fromLTRB(10.w, 37.h, 10.w, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              FairyTaleContainer(),
              FairyTaleContainer(),
              FairyTaleContainer(),
              FairyTaleContainer(),
              FairyTaleContainer(),
              FairyTaleContainer(),
              FairyTaleContainer(),
              FairyTaleContainer(),
            ],
          ),
        ),
      ),
    );
  }
}

class FairyTaleContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 10.h,
      ),
      height: 108.h,
      decoration: BoxDecoration(
        color: Color(0xFF00493C),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(10.w, 16.h, 10.w, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                fairyTaleTitle(),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 13.w,
              ),
              child: userReaction(),
            ),
            SizedBox(
              height: 7.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 13.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  fairyTaleDescription(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget fairyTaleTitle() {
    return Text(
      'Алтын бөртекләр | Золотые зернышки',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontSize: 12.sp,
      ),
    );
  }

  Widget userReaction() {
    return Row(
      children: [
        likesCounterIcon(),
        SizedBox(
          width: 5.w,
        ),
        likeCounterText(),
        SizedBox(
          width: 4.w,
        ),
        dislikesCounterIcon(),
        SizedBox(
          width: 5.w,
        ),
        dislikeCounterText(),
      ],
    );
  }

  Widget likesCounterIcon() {
    return Image.asset(
      'assets/images/like_icon.png',
      width: 8.w,
      height: 8.w,
    );
  }

  Widget likeCounterText() {
    return Text(
      '1501  |',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontSize: 9.sp,
      ),
    );
  }

  Widget dislikesCounterIcon() {
    return Image.asset(
      'assets/images/like_icon.png',
      width: 8.w,
      height: 8.w,
    );
  }

  Widget dislikeCounterText() {
    return Text(
      '32',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontSize: 9.sp,
      ),
    );
  }

  Widget fairyTaleDescription() {
    final String hintText =
        'Борын-борын заманда бер Ир белән бер Хатын яшәгәннәр. Аларның биш уллары булган. Бердәнбер көнне боларның әтиләре Туган илне яклап яуга киткән. Ул кире әйләнеп кайтмаган, сугыш кырында үлеп калган...';
    return Container(
      width: 300.w,
      child: Text(
        hintText,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: 9.sp,
        ),
      ),
    );
  }
}
