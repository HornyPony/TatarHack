import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tatar_hack/widgets/arrow_back_title_appbar.dart';

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: driverProfileAppBar(context),
      body: SafeArea(
        child: UserProfileBody(),
      ),
    );
  }

  driverProfileAppBar(BuildContext context) {
    return ArrowBackTitleAppbar.arrowBackTitleAppbar(
      context: context,
      title: 'Профиль',
    );
  }
}

class UserProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MainCard(),
          AboutUserBody(),
        ],
      ),
    );
  }
}

class MainCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.h,
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          12.w,
          8.h,
          13.w,
          0,
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                driverPhoto(),
                SizedBox(
                  width: 19.w,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 5.h,
                    ),
                    driverName(),
                    SizedBox(
                      height: 10.h,
                    ),
                    driverStatistics(),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 6.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                messageIcon(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget driverPhoto() {
    return Stack(
      children: [
        Container(
          width: 86.h,
          height: 86.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/profile_image.png',
                ),
                fit: BoxFit.cover),
          ),
        ),
        Positioned(
          right: 0.w,
          bottom: 0.h,
          child: Container(
            width: 26.w,
            height: 26.w,
            child: Image.asset(
              'assets/images/verification_sharp.png',
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }

  Widget driverName() {
    return Text(
      'Anton Wischnewski',
      style: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Widget driverStatistics() {
    return Container(
      width: 196.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 8.w,
          ),
          Column(
            children: [
              Text(
                '5',
                style: TextStyle(
                  fontFamily: 'SegoeUI',
                  fontSize: 15.sp,
                  color: Colors.white,
                ),
              ),
              Text(
                'Trips',
                style: TextStyle(
                  fontFamily: 'SegoeUI',
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Container(
            width: 2.w,
            height: 33.h,
            color: Colors.white,
          ),
          Column(
            children: [
              Text(
                '2',
                style: TextStyle(
                  fontFamily: 'SegoeUI',
                  fontSize: 15.sp,
                  color: Colors.white,
                ),
              ),
              Text(
                'Deliveries',
                style: TextStyle(
                  fontFamily: 'SegoeUI',
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget driverLocation() {
    return Row(
      children: [
        Container(
          width: 14.w,
          height: 14.w,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              'assets/images/location_icon.png',
            ),
            fit: BoxFit.fill,
          )),
        ),
        SizedBox(
          width: 4.w,
        ),
        Text(
          'Berlin',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.sp,
          ),
        ),
      ],
    );
  }

  Widget messageIcon() {
    return Container(
      width: 26.w,
      height: 26.w,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/message_icon.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class AboutUserBody extends StatelessWidget {
  final Color textColor = Color(0xFF797979);
  final Color dataTitleColor = Color(0xFF5F666B);
  final Color dataFactColor = Color(0xFF231F20);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          sectionsTitle('About info:'),
          aboutInfoCard(),
          Divider(
            height: 0,
          ),
          SizedBox(
            height: 9.h,
          ),
        ],
      ),
    );
  }

  Widget sectionsTitle(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ],
    );
  }

  Widget aboutInfoCard() {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        24.w,
        13.h,
        24.w,
        23.h,
      ),
      child: Column(
        children: [
          aboutInfoCardDataRow('Surname:', 'Lukas'),
          aboutInfoCardDataRow('Name:', 'Pantoja'),
          aboutInfoCardDataRow('Location:', 'Berlin'),
          aboutInfoCardDataRow('Registered since:', '23.01.2021'),
        ],
      ),
    );
  }

  Widget aboutInfoCardDataRow(String aboutInfoTitle, String aboutInfoFact) {
    return Container(
      margin: EdgeInsets.only(bottom: 14.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            aboutInfoTitle,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: dataTitleColor,
            ),
          ),
          Text(
            aboutInfoFact,
            style: TextStyle(
              fontSize: 14.sp,
              color: dataFactColor,
            ),
          )
        ],
      ),
    );
  }
}

class TripsDriverTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Trips'),
    );
  }
}

class DeliveriesDriverTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Deliveries'),
    );
  }
}
