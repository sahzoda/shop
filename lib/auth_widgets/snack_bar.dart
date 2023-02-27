import 'package:flutter/material.dart';


import '../constants/colors/app_colors.dart';

class SnackBarWidget {
  static void snackBar(String text, var _scaffoldKey) {
    _scaffoldKey.currentState!.showSnackBar(
      SnackBar(
        duration: Duration(seconds: 4),
        backgroundColor: AppColors.yellow,
        content: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            color: AppColors.black,
          ),
        ),
      ),
    );
  }
}
