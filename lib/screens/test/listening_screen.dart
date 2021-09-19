import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tatar_hack/widgets/test_passing_status.dart';

class ListeningScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(),
      body: ListeningScreenBody(),
    );
  }
}

class ListeningScreenBody extends StatelessWidget {
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
          TestPassingStatus(image: 'assets/images/reading_selected.png'),
          SizedBox(
            height: 60.h,
          ),
          Flexible(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 4 / 1,
              mainAxisSpacing: 20.w,
              crossAxisSpacing: 20.w,
              children: [
                wordContainer(
                  context,
                  'Даруханә',
                ),
                wordContainer(
                  context,
                  'Продукты',
                ),
                wordContainer(
                  context,
                  'Түбәтәй',
                ),
                wordContainer(
                  context,
                  'Остановка',
                ),
                wordContainer(
                  context,
                  'Ашамлыклар',
                ),
                wordContainer(
                  context,
                  'Аптека',
                ),
                wordContainer(
                  context,
                  'Тукталыш',
                ),
                wordContainer(
                  context,
                  'Треугольник',
                ),
                wordContainer(
                  context,
                  'Эчпочмак',
                ),
                wordContainer(
                  context,
                  'Тюбетей',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget wordContainer(BuildContext context, String text) {
    return Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
        ),
        child: Center(child: wordText(text)));
  }

  Widget wordText(String text) {
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
