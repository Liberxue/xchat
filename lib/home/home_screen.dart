import 'package:flutter/material.dart';
import '../appconfig.dart' show AppIconsConfig,AppColors;
enum RightActionItem{
  Group_CHAT,ADD_FRIEND,QR_SCAN,PAYMENT
}
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
  int _currentIndex=0;//默认选择BottomNavigationBar【微信】TAB
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
        0xe600,
        fontFamily: AppIconsConfig.IconFontFamily,
      )
    ),
    ];
    }


    _buildPopupMenuItem(int iconName,String title){
    return Row(
      children: <Widget>[
      Icon(IconData(
       iconName,
       fontFamily: AppIconsConfig.IconFontFamily,
      ),size: 22.0,color:const Color(AppColors.AppbarPopupMenuColor),
    ),
    Container(width: 14.0,),
    Text(title,style:TextStyle(color: const Color(AppColors.AppbarPopupMenuColor)),),//加const 编译时间固定提升程序运行效率
    ],
  );
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
currentIndex: _currentIndex,
type: BottomNavigationBarType.fixed,
onTap: (int index){
  setState(() {
      _currentIndex=index;
    });
  print("点击的是第$index个Tab");
},
    );
    return Scaffold(appBar: AppBar(
      title: Text("微信"),
      elevation: 0.0,//扁平化 appBar
      actions: [
        // IconButton(
        //   icon: Icon(Icons.add),
        //   onPressed: (){print("点击add下拉");},
        // ),
       Container(width: 16.0,),
       PopupMenuButton(
         itemBuilder: (BuildContext Context){
           return <PopupMenuItem<RightActionItem>>[
            PopupMenuItem(
              // child: Text('发起群聊'),
              child: _buildPopupMenuItem(0xe603, "发起群聊"),
              value: RightActionItem.Group_CHAT,
            ),
            PopupMenuItem(
              // child: Text('发起群聊'),
              child: _buildPopupMenuItem(0xe61d, "添加朋友"),
              value: RightActionItem.ADD_FRIEND,
            ),
            PopupMenuItem(
              // child: Text('发起群聊'),
              child: _buildPopupMenuItem(0xe7c8, "扫一扫"),
              value: RightActionItem.QR_SCAN,
            ),
            PopupMenuItem(
              // child: Text('发起群聊'),
              child: _buildPopupMenuItem(0xe62a, "收付款"),
              value: RightActionItem.PAYMENT,
            ),
           ];
         },
              
         icon: Icon(IconData(
           0xe605,
          fontFamily: AppIconsConfig.IconFontFamily,
      ),size: 22.0,),
      onSelected: (RightActionItem selected){print('点击事件:$selected');},
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
