import 'package:flutter/material.dart';
import 'package:tatar_hack/widgets/green_btn.dart';
import 'package:tatar_hack/widgets/test_passing_status.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(),
      body: ResultScreenBody(),
    );
  }
}

class ResultScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        50.w,
        20.h,
        50.w,
        0,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            TestPassingStatus(image: 'assets/images/all_selected.png'),
            SizedBox(
              height: 28.h,
            ),
            resultCard(context),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 23.w,
              ),
              child: progressBar(5),
            ),
            SizedBox(
              height: 8.h,
            ),
            progressText(5),
            SizedBox(
              height: 45.h,
            ),
            resultWordsList(context),
            GreenBtn(
              width: 175.w,
              height: 37.h,
              text: 'Продолжить',
              onPressed: () {},
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget resultText() {
    return Text(
      'Результат урока',
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 20.sp,
        color: Colors.white,
      ),
    );
  }

  Widget resultCard(BuildContext context) {
    return Container(
      width: 269.w,
      height: 218.h,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(14.r),
      ),
      child: Column(
        children: [
          wordImage(context),
          wordText(),
        ],
      ),
    );
  }

  Widget wordText() {
    return Container(
      height: 34.h,
      child: Center(
        child: Text(
          'Я еду в Татарстан',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 13.sp,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget wordImage(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 268.w,
        height: 184.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(
              14.r,
            ),
            bottomRight: Radius.circular(
              14.r,
            ),
          ),
          image: DecorationImage(
            image: AssetImage(
              'assets/images/lesson_result_image.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget progressBar(double categoryProgress) {
    return LinearProgressIndicator(
      value: categoryProgress * 1 / 20,
      valueColor: AlwaysStoppedAnimation(Color(0xFF00B812)),
      backgroundColor: Colors.white,
    );
  }

  Widget progressText(int progress) {
    return Text(
      '$progress/20',
      style: TextStyle(
        color: Colors.white,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Widget resultWordsList(BuildContext context) {
    final List<ResultItem> resultWords = [
      ResultItem(
        word: 'Даруханә',
      ),
      ResultItem(
        word: 'Түбәтәй',
      ),
      ResultItem(
        word: 'Эчпочмак',
      ),
      ResultItem(
        word: 'Ашамлыклар',
      ),
      ResultItem(
        word: 'Тукталыш',
      ),
    ];

    return ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return LessonWordTile(
            word: resultWords[index].word,
          );
        },
        separatorBuilder: (BuildContext context, int index) => Divider(
              height: 0,
              thickness: 1.5,
            ),
        itemCount: resultWords.length);
  }
}

class ResultItem {
  final String word;

  ResultItem({required this.word});
}

class LessonWordTile extends StatelessWidget {
  final String word;

  LessonWordTile({required this.word});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        word,
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.bold,
          color: Color(
            0xFF006C52,
          ),
        ),
      ),
      leading: Image.asset(
        'assets/images/checked.png',
        width: 20.w,
        height: 20.w,
      ),
    );
  }
}
