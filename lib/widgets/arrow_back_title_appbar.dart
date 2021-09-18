import 'package:flutter/material.dart';
import 'package:tatar_hack/widgets/appbar/appbar_title_bold.dart';

class ArrowBackTitleAppbar {
  static arrowBackTitleAppbar({
    required BuildContext context,
    required String title,
  }) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: new IconButton(
        icon: new Icon(
          Icons.arrow_back,
          size: 35.0,
          color: Color(0xFF00C2FF),
        ),
        onPressed: () => {
          Navigator.of(context).pop(),
        },
      ),
      title: AppbarTitleBold(
        title: title,
      ),
      centerTitle: true,
    );
  }
}
