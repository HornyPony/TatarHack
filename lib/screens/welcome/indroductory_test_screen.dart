import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:tatar_hack/provider/question_provider.dart';

class IntroductoryTestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: introductoryTestAppbar(),
      body: IntroductoryTestBody(),
    );
  }

  introductoryTestAppbar() {
    return AppBar();
  }
}

class IntroductoryTestBody extends StatefulWidget {
  @override
  _IntroductoryTestBodyState createState() => _IntroductoryTestBodyState();
}

class _IntroductoryTestBodyState extends State<IntroductoryTestBody> {
  int val = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF00231B),
      child: SingleChildScrollView(
        child: Column(
          children: [
            testQuestionsList(context),
            ElevatedButton(
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
            ),
          ],
        ),
      ),
    );
  }

  Widget testQuestionsList(BuildContext context) {
    final List<TestQuestion> testQuestions = [
      TestQuestion(
        question: 'Рәхим итегез',
        answers: [
          'Добро пожаловать',
          'До свидания',
          'Привет',
        ],
        rightAnswer: 1,
      ),
      TestQuestion(
        question: 'Сау булыгыз',
        answers: [
          'Живите долго',
          'До свидания',
          'Здравствуйте',
        ],
        rightAnswer: 3,
      ),
      TestQuestion(
        question: 'Алма',
        answers: [
          'Пастила',
          'Яблоко',
          'Здравствуйте',
        ],
        rightAnswer: 2,
      ),
      TestQuestion(
        question: 'Ишәк',
        answers: [
          'Дверь',
          'Лень',
          'Осел',
        ],
        rightAnswer: 3,
      ),
      TestQuestion(
        question: 'Мөрәҗәгать',
        answers: [
          'Обращение',
          'Блаженство',
          'Рай',
        ],
        rightAnswer: 1,
      ),
      TestQuestion(
        question: 'Су',
        answers: [
          'Вода',
          'Лист',
          'Сучок',
        ],
        rightAnswer: 1,
      ),
      TestQuestion(
        question: 'Табигать',
        answers: [
          'Небо',
          'Земля',
          'Природа',
        ],
        rightAnswer: 3,
      ),
      TestQuestion(
        question: 'Иҗтимагый',
        answers: [
          'Важный',
          'Общественный',
          'Редкий',
        ],
        rightAnswer: 2,
      ),
      TestQuestion(
        question: 'Сәхнә',
        answers: [
          'Сахар',
          'Сахара',
          'Сцена',
        ],
        rightAnswer: 3,
      ),
      TestQuestion(
        question: 'Мөнәсәбәт',
        answers: [
          'Отношение',
          'Любовь',
          'Злость',
        ],
        rightAnswer: 1,
      ),
      TestQuestion(
        question: 'Мөмкинчелек',
        answers: [
          'Возможность',
          'Сахара',
          'Сцена',
        ],
        rightAnswer: 1,
      ),
      TestQuestion(
        question: 'Васыять',
        answers: [
          'Бежать',
          'Завещание',
          'Просвет',
        ],
        rightAnswer: 2,
      ),
      TestQuestion(
        question: 'Тәртипсез',
        answers: [
          'Устройство',
          'Неугомонный',
          'Невоспитанный',
        ],
        rightAnswer: 3,
      ),
      TestQuestion(
        question: 'Суыткыч',
        answers: [
          'Питьевая вода',
          'Мороженое',
          'Холодильник',
        ],
        rightAnswer: 3,
      ),
      TestQuestion(
        question: 'Сихер',
        answers: [
          'Волшебство',
          'Телефон',
          'Рыба',
        ],
        rightAnswer: 1,
      ),
      TestQuestion(
        question: 'Эт',
        answers: [
          'Толкай',
          'Кошка',
          'Медведь',
        ],
        rightAnswer: 1,
      ),
    ];

    List<TestItem> testList = [];

    bool questionStatus;
    int questionsTappingCounter = 0;

    for (int i = 0; i < testQuestions.length; i++) {
      testList.add(TestItem(
        testText: testQuestions[i].question,
        onPressed: () {
          questionsTappingCounter++;

          if (questionsTappingCounter % 3 == 0) {
            openShipmentObjectsDialog(context, testQuestions[i]);
            questionsTappingCounter++;
          } else {
            questionsTappingCounter++;
          }
        },
        questionStatus: Provider.of<QuestionProvider>(context, listen: true)
            .isRightAnswered,
      ));
    }

    return ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: testList[index].onPressed,
            title: Text(
              testList[index].testText,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: Color(
                  0xFF006C52,
                ),
              ),
            ),
            leading: testList[index].questionStatus
                ? questionIsAnsweredIcon()
                : questionIsUnansweredIcon(),
          );
        },
        separatorBuilder: (BuildContext context, int index) => Divider(
              height: 0,
              thickness: 1.5,
            ),
        itemCount: testList.length);
  }

  questionIsAnsweredIcon() {
    return Container(
      width: 21.w,
      height: 21.w,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/answered_test_question.png'))),
    );
  }

  questionIsUnansweredIcon() {
    return Container(
      width: 21.w,
      height: 21.w,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/unanswered_test_question.png'))),
    );
  }

  openShipmentObjectsDialog(BuildContext context, TestQuestion testQuestion) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return ShipmentObjectDialog(
            testQuestion: testQuestion,
          );
        });
  }

  testQuestionStatusImage(String image) {
    return Container(
      width: 21.w,
      height: 21.w,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ShipmentObjectDialog extends StatefulWidget {
  final TestQuestion testQuestion;

  ShipmentObjectDialog({required this.testQuestion});

  @override
  _ShipmentObjectDialogState createState() => _ShipmentObjectDialogState();
}

class _ShipmentObjectDialogState extends State<ShipmentObjectDialog> {
  bool _value = false;
  int val = -1;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      child: Container(
        width: 220.w,
        height: 190.h,
        decoration: BoxDecoration(
          color: Color(0xFF00493C),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(15.w, 15.w, 15.w, 0),
          child: Column(
            children: [
              testQuestionText(),
              SizedBox(
                height: 6.h,
              ),
              testAnswerChoose(),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget testQuestionText() {
    return Container(
      width: 170.w,
      child: Text(
        widget.testQuestion.question,
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: Color(0xFFE4E4E4),
          shadows: <Shadow>[
            Shadow(
              offset: Offset(-1, 0),
              blurRadius: 0,
              color: Color(0xFF000000).withOpacity(0.74),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget testAnswerChoose() {
    return Column(
      children: [
        Row(
          children: [
            Radio(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              value: 1,
              groupValue: val,
              onChanged: (value) {
                if (value == widget.testQuestion.rightAnswer) {
                  Provider.of<QuestionProvider>(context, listen: false)
                      .rightAnswered();
                }
                setState(() {
                  if (value is int) {
                    val = value;
                  }
                });
              },
              activeColor: Color(0xFFC7D0CE),
            ),
            Text(
              widget.testQuestion.answers[0],
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Radio(
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
            Text(
              widget.testQuestion.answers[1],
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Radio(
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
            Text(
              widget.testQuestion.answers[2],
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

class TestItem {
  final String testText;
  final VoidCallback onPressed;
  final bool questionStatus;

  TestItem({
    required this.testText,
    required this.onPressed,
    required this.questionStatus,
  });
}

class TestQuestion {
  final String question;
  final List<String> answers;
  final int rightAnswer;

  TestQuestion({
    required this.question,
    required this.answers,
    required this.rightAnswer,
  });
}
