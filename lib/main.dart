import 'package:flutter/material.dart';
import './appconfig.dart' show AppColors;
import './home/home_screen.dart';
void main()=> runApp(MaterialApp(
  title: "微信",
  // theme: ThemeData(
  //   primaryColor: Color(0xff303030)
  // ),
  // 修改Appbar颜色
  theme: ThemeData.light().copyWith(
    primaryColor: Color(AppColors.AppbarColor),
    cardColor: Color(AppColors.AppbarColor)
  ),
  home: HomeScreen(),
));
