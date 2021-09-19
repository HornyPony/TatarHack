import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tatar_hack/widgets/test_passing_status.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpeakingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(),
      body: SafeArea(child: SpeakingScreenBody()),
    );
  }
}

class SpeakingScreenBody extends StatefulWidget {
  @override
  _SpeakingScreenBodyState createState() => _SpeakingScreenBodyState();
}

class _SpeakingScreenBodyState extends State<SpeakingScreenBody> {
  bool isPlayback = false;
  bool isRecording = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        45.w,
        20.h,
        45.w,
        0,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            TestPassingStatus(
              image: 'assets/images/listening_selected.png',
            ),
            SizedBox(height: 60.h),
            Center(child: wordCard(context)),
            SizedBox(height: 75.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isPlayback = !isPlayback;
                      isRecording = false;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    elevation: 0,
                  ),
                  child: Image.asset(
                    'assets/images/sound_playback.png',
                    width: 76.w,
                    height: 76.w,
                    color: isPlayback ? Color(0xFF00B812) : Color(0xFF9FF6E9),
                  ),
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isRecording = !isRecording;
                          isPlayback = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        elevation: 0,
                      ),
                      child: Image.asset(
                        'assets/images/record_icon.png',
                        width: 76.w,
                        height: 76.w,
                        color:
                            isRecording ? Color(0xFF00B812) : Color(0xFF9FF6E9),
                      ),
                    ),

                    /*SizedBox(
                      height: 20.h,
                    ),
                    Image.asset(
                      'assets/images/listen_icon.png',
                      width: 76.w,
                      height: 76.w,
                    ),*/
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget wordCard(BuildContext context) {
    return Container(
      width: 269.w,
      height: 218.h,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(14.r),
      ),
      child: Column(
        children: [
          wordText(),
          wordImage(context),
        ],
      ),
    );
  }

  Widget wordText() {
    return Container(
      height: 34.h,
      child: Center(
        child: Text(
          'Эчпочмак',
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
              'assets/images/triangle.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
