import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tatar_hack/widgets/green_btn.dart';

class ReadingTestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Theme.of(context).accentColor,
      body: SafeArea(child: ReadingTestBody()),
    );
  }
}

class ReadingTestBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10.w, 6.h, 10.w, 0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            readingTestItem(context),
            readingTestItem(context),
            readingTestItem(context),
            GreenBtn(
              width: 175.w,
              height: 37.h,
              text: 'Проверить',
              onPressed: () {},
            ),
            SizedBox(
              height: 50.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget readingTestItem(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 16.h,
      ),
      height: 160.h,
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          10.w,
          18.h,
          10.w,
          0,
        ),
        child: Column(
          children: [
            readingTestQuestionText(),
            ReadingTestAnswers(),
          ],
        ),
      ),
    );
  }

  Widget readingTestQuestionText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 34.w,
        ),
        Text(
          'Куда ушел отец?',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class ReadingTestAnswers extends StatefulWidget {
  @override
  _ReadingTestAnswersState createState() => _ReadingTestAnswersState();
}

class _ReadingTestAnswersState extends State<ReadingTestAnswers> {
  int val = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Theme(
              data: ThemeData(
                unselectedWidgetColor: Colors.white,
              ),
              child: Radio(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: 1,
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    if (value is int) {
                      val = value;
                    }
                  });
                },
                activeColor: Color(0xFFC7D0CE),
              ),
            ),
            Text(
              'Сарайга',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Theme(
              data: ThemeData(
                unselectedWidgetColor: Colors.white,
              ),
              child: Radio(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: 2,
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    if (value is int) {
                      val = value;
                    }
                  });
                },
                activeColor: Color(0xFFC7D0CE),
              ),
            ),
            Text(
              'Сугыш кырына',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Theme(
              data: ThemeData(
                unselectedWidgetColor: Colors.white,
              ),
              child: Radio(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: 3,
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    if (value is int) {
                      val = value;
                    }
                  });
                },
                activeColor: Color(0xFFC7D0CE),
              ),
            ),
            Text(
              'Себергә акча эшләргә',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
