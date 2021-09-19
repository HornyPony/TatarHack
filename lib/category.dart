class Category {
  static List<Skazka> getSkazkaList() {
    List<Skazka> list = [];
    list.add(Skazka(
        rus_title: "Алтын бөртекләр",
        tatar_title: "Золотые зернышки",
        type: "татарская народная сказка",
        text: [
          Paragr(
              "Борын-борын заманда бер Ир белән бер Хатын яшәгәннәр. Аларның биш уллары булган.",
              "В давние-давние времена жили-были муж с женою и было у них 5 сыновей."),
          Paragr(
              "Бердәнбер көнне боларның әтиләре Туган илне яклап яуга киткән. Ул кире әйләнеп кайтмаган,сугыш кырында үлеп калган.",
              "Однажды отец ушел на войну и не вернулся, остался лежать на поле битвы."),
          Paragr("Ялгыз Ана биш малайны үзе генә тәрбияләп үстергән.",
              "Матери пришлось самой растить пятерых сыновей."),
          Paragr("— Улларым,— дигән Ана, Егетләрне үз янына чакырып алган да.",
              "Позвала всех сыновей к себе и говорит:"),
          Paragr(
              "—Мин сезне үстердем, хәзер үз көнегезне үзегез күрегез,— дигән.",
              "— Дети мои, я вас вырастила, а сейчас живите самостоятельно."),
        ]));
    return list;
  }
}

class Skazka {
  final String rus_title;
  final String tatar_title;
  final String type;
  final List<Paragr> text;

  Skazka(
      {required this.rus_title,
      required this.tatar_title,
      required this.type,
      required this.text});
}

class Paragr {
  final String tatar;
  final String rus;

  Paragr(this.tatar, this.rus);
}
