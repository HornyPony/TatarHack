import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tatar_hack/provider/question_provider.dart';
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
            primaryColor: Color(0xFF21C2FD),
            accentColor: Color(0xFF167998),
            fontFamily: 'Comfortaa',
            scaffoldBackgroundColor: Colors.white,
            timePickerTheme: TimePickerThemeData(
              dialBackgroundColor: Colors.grey[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.r),
              ),
            ),
          ),
          home: IntroductoryTestScreen(),
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
