import 'package:flutter/material.dart';
class AppColors{
  static const AppbarColor=0xff303030;
  static const TabIconyDefault=0xff999999;
  static const TabIconActive=0xff46c11b;
  static const AppbarPopupMenuColor=0xffffffff;
  static const TitleTextColor=0xff353535;
  static const ConverstationIemBG=0xfffffffff;
  static const DesTextColor=0xff9e9e9e;
  static const DividerColor=0xffd9d9d9;

}

class AppStyles{
  static const TitleStyle = TextStyle(
    fontSize:14.0,
    color: Color(AppColors.TitleTextColor)
  );
 static const DesStyle = TextStyle(
    fontSize:12.0,
    color: Color(AppColors.DesTextColor)
  );
}
class AppIconsConfig {
  static const IconFontFamily="appIconFont";
  static const ConversationAvaterSize=48.0;
  static const DividerWidth=1.0;
}
