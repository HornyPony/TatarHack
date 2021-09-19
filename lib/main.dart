import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tatar_hack/provider/question_provider.dart';
import 'package:tatar_hack/screens/fairy_tale/fairy_tale_screen.dart';
import 'package:tatar_hack/screens/fairy_tale/reading_test.dart';
import 'package:tatar_hack/screens/profile_screen.dart';
import 'package:tatar_hack/screens/test/categories_screen.dart';
import 'package:tatar_hack/screens/test/listening_screen.dart';
import 'package:tatar_hack/screens/test/result_screen.dart';
import 'package:tatar_hack/screens/test/speaking_screen.dart';
import 'package:tatar_hack/screens/test/translate_screen.dart';
import 'package:tatar_hack/screens/test/voicing_words_screen.dart';
import 'package:tatar_hack/screens/welcome/welcome_screen.dart';
import 'screens/fairy_tale/fairy_tale_list_screen.dart';
import 'package:tatar_hack/screens/welcome/indroductory_test_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => QuestionProvider(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 640),
        builder: () => MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            // is not restarted.
            accentColor: Color(0xFF00231B),
            primaryColor: Color(0xFF00493C),
            fontFamily: 'Comfortaa',
            scaffoldBackgroundColor: Colors.white,
            timePickerTheme: TimePickerThemeData(
              dialBackgroundColor: Colors.grey[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.r),
              ),
            ),
          ),
          home: WelcomeScreen(),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(),
    );
  }
}
