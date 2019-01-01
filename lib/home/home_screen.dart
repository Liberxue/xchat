import 'package:flutter/material.dart';
import '../appconfig.dart' show AppIconsConfig,AppColors;
class NavigationIconView{
  final String _title;
  final IconData _icon;
  final IconData _activeIcon;
  final BottomNavigationBarItem item;

  NavigationIconView({Key key, String title, IconData icon, IconData activeIcon}) :
   _title=title,
   _icon=icon,
   _activeIcon=activeIcon,
    item = BottomNavigationBarItem(
      icon: Icon(icon,color: Color(AppColors.TabIconyDefault)),
      activeIcon: Icon(activeIcon,color: Color(AppColors.TabIconActive),),
      title: Text(title,style: TextStyle(
        fontSize: 14.0,
        color: Color(AppColors.TabIconyDefault)
      ),),
      backgroundColor: Colors.white,
    );
}
//stful
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    List<NavigationIconView>_nvigationIconViews;

  void initState() { 
    super.initState();
    _nvigationIconViews=[
    NavigationIconView(
      title:'微信',
      icon: IconData(
        0xe603,
       fontFamily: AppIconsConfig.IconFontFamily,
      ),
      activeIcon: IconData(
        0xe603,
        fontFamily:AppIconsConfig.IconFontFamily,
      )
    ),
    NavigationIconView(
      title:'通讯录',
      icon:IconData(
        0xe72a,
        fontFamily: AppIconsConfig.IconFontFamily,
      ),
      activeIcon:IconData(
             0xe72a,
        fontFamily: AppIconsConfig.IconFontFamily,
      )
    ),
    NavigationIconView(
      title:'发现',
      icon:IconData(
        0xe69c,
        fontFamily: AppIconsConfig.IconFontFamily,
      ),
      activeIcon:IconData(
        0xe69c,
        fontFamily: AppIconsConfig.IconFontFamily,
      )
    ),
    NavigationIconView(
      title:'我',
      icon:IconData(
        0xe600,
        fontFamily: AppIconsConfig.IconFontFamily,
      ),
      activeIcon:IconData(
        0xe600;,
        fontFamily: AppIconsConfig.IconFontFamily,
      )
    ),
    ];
    }
  @override
  Widget build(BuildContext context) {
    // return Container(
    // color: Colors.black12,
    // );
    final BottomNavigationBar botNavBar=BottomNavigationBar(
items: _nvigationIconViews.map((NavigationIconView view){

  return view.item;
}).toList(),
currentIndex: 0,
type: BottomNavigationBarType.fixed,
onTap: (int index){
  print("点击的是第$index个Tab");
},
    );
    return Scaffold(appBar: AppBar(
      title: Text("微信"),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: (){print("点击搜索");},
        ),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: (){print("点击add下拉");},
        )
      ],
     // backgroundColor: Color(0xff303030),//直接暴力修改Appbrr
    ),
    body: Container(
      color: Colors.white,
    ),
    bottomNavigationBar:botNavBar,
    );
  }
}
