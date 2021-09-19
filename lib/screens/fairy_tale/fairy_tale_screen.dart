import 'package:flutter/material.dart';
import 'package:tatar_hack/screens/fairy_tale/fairy_tale_list_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FairyTaleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(),
      body: FairyTaleScreenBody(),
    );
  }
}

class FairyTaleScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        10.w,
        10.h,
        10.w,
        0,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            fairyTaleTitle(),
            SizedBox(
              height: 10.h,
            ),
            fairyTaleStyle(),
            SizedBox(
              height: 10.h,
            ),
            fairyTaleImage(),
            SizedBox(
              height: 14.h,
            ),
            fairyTaleText(),
            SizedBox(
              height: 20.h,
            ),
            UserReactionRow(),
            SizedBox(
              height: 30.h,
            ),
            passTestBtn(),
            SizedBox(
              height: 42.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget fairyTaleTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Алтын бөртекләр | Золотые зернышки',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
            shadows: <Shadow>[
              Shadow(
                offset: Offset(-1, 1),
                blurRadius: 0,
                color: Color(0xFF000000).withOpacity(0.62),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget fairyTaleStyle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 175.w,
          height: 20.h,
          decoration: BoxDecoration(
              color: Color(0xFF00764B),
              borderRadius: BorderRadius.circular(14.r)),
          child: Center(
            child: Text(
              'Татарские народные сказки',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 9.sp,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget fairyTaleImage() {
    return Image.asset(
      'assets/images/tale_image.png',
      width: 128.w,
      height: 85.h,
    );
  }

  Widget fairyTaleText() {
    final String hintText =
        'Борын-борын заманда бер Ир белән бер Хатын яшәгәннәр. Аларның биш уллары булган. \n\nБердәнбер көнне боларның әтиләре Туган илне яклап яуга киткән. Ул кире әйләнеп кайтмаган, сугыш кырында үлеп калган.\n\n'
        'Ялгыз Ана биш малайны үзе генә тәрбияләп үстергән.\n\n'
        '— Улларым,— дигән Ана, Егетләрне үз янына чакырып алган да.\n\n'
        '—Мин сезне үстердем, хәзер үз көнегезне үзегез күрегез,— дигән.\n\n'
        '— Без,—дигәннәр Егетләр,—үз көнебезне үзебез күрер идек, акчабыз юк бит. Син, Әни, безгә берәр генә бөртек булса да алтын бир.\n\n'
        '— Алтын бирәм,— дигән Ана.— Бер бөртек түгел, мең бөртек. Тик ул алтыннарны әтиегез җыеп куйган иде. Аны үзегез эзләп табыгыз!\n\n'
        '— Табабыз, табабыз! — дигәннәр Егетләр.\n\n'
        ' — Ә-әнә,— дигән Ана,— Ташлытау белән Карлытауны күрәсезме? Шул ике тау арасындагы киң басуны күрәсезме? Шул басуга әтиегез алтын бөртекләре күмгән иде. Эзләп табыгыз шуны. Басуның җирен казыгыз. Җиң сызганып, тир сыпырып эшләгез.\n\n'
        'Биш Егет биш сабан белән күз күреме кадәр җирне сөреп чыкканнар. Аннары кәсләрне ваклап, тырма белән тырмалаганнар. Ә алтын бөртекләрен тапмаганнар. Шуннан Егетләр, бик күңелсезләнеп, Әниләре янына кайтканнар.\n\n'
        '— Бер генә бөртек тә алтын тапмадык, әни! — дигәннәр.\n\n'
        ' — Борчылмагыз, улларым! — дигән Ана.— Табарсыз алтыннарны! — Әнә бурадагы бодайны илтеп чәчегез шул җиргә, көз көне бодайны ургач, камылын йолкырсыз, бодай тамырына алтын бөртекләре эләгеп чыгар.\n\n'
        'Егетләр Әниләре әйткәнчә эшләгәннәр. Бодай мул уңган, аны урганнар, сукканнар.\n\n'
        '— Китерегез миңа үзегез иккән игенне! — дигән Ана. Егетләр Әниләре алдына капчык-капчык игенне китереп өйгәннәр. Ана кызгылт-сары бөртекләрне учына алып караган да улларына әйткән:\n\n'
        '—Әтиегезнең җиргә күмгән алтын бөртекләре менә шулар инде, улларым.\n\n'
        'Сез менә аларны эзләп таптыгыз. Инде хәзер үзегез көн итә алырсыз! — дигән.\n\n'
        'Егетләр бер-берсенә караганнар да бәхетле елмайганнар.';
    return Text(
      hintText,
      style: TextStyle(
          fontSize: 10.sp, fontWeight: FontWeight.w400, color: Colors.white),
    );
  }

  Widget passTestBtn() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color(0xFF38A042),
        fixedSize: Size(
          175.w,
          37.h,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.r),
        ),
      ),
      onPressed: () {},
      child: Text(
        'Пройти тест',
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

class UserReactionRow extends StatefulWidget {
  @override
  _UserReactionRowState createState() => _UserReactionRowState();
}

class _UserReactionRowState extends State<UserReactionRow> {
  bool isLikeIconSelected = false;
  bool isDislikeIconSelected = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            bigLikeIcon(),
            isLikeIconSelected ? likesAmountText() : SizedBox(),
          ],
        ),
        Column(
          children: [
            bigDislikeIcon(),
            isDislikeIconSelected ? dislikesAmountText() : SizedBox(),
          ],
        ),
      ],
    );
  }

  Widget bigLikeIcon() {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          isLikeIconSelected = !isLikeIconSelected;
          isDislikeIconSelected = false;
        });
      },
      style:
          ElevatedButton.styleFrom(primary: Colors.transparent, elevation: 0),
      child: Image.asset(
        'assets/images/big_like_icon.png',
        width: 28.w,
        height: 28.w,
        color: isLikeIconSelected ? Color(0xFF00B812) : Colors.white,
      ),
    );
  }

  Widget bigDislikeIcon() {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          isDislikeIconSelected = !isDislikeIconSelected;
          isLikeIconSelected = false;
        });
      },
      style:
          ElevatedButton.styleFrom(primary: Colors.transparent, elevation: 0),
      child: Image.asset(
        'assets/images/big_dislike_icon.png',
        width: 28.w,
        height: 28.w,
        color: isDislikeIconSelected ? Color(0xFF00FFF0) : Colors.white,
      ),
    );
  }

  Widget likesAmountText() {
    return Text(
      '1502',
      style: TextStyle(
        color: Color(0xFF00B812),
        fontWeight: FontWeight.w400,
        fontSize: 10.sp,
      ),
    );
  }

  Widget dislikesAmountText() {
    return Text(
      '33',
      style: TextStyle(
        color: Color(0xFF00FFF0),
        fontWeight: FontWeight.w400,
        fontSize: 10.sp,
      ),
    );
  }
}
