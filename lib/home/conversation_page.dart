import 'package:flutter/material.dart';

import '../appconfig.dart' show AppColors,AppStyles,AppIconsConfig;
import './conversation.dart'show Conversation,mockConversations;
 class _ConversationItem extends StatelessWidget {
   const _ConversationItem({Key key,this.conversation})
   :assert(conversation!=null),

   super(key:key);

   final Conversation conversation;

   @override
   Widget build(BuildContext context) {
     // 定义获取图片avater初始化头像组件
     Widget avater;
     if (conversation.isAvaterFormNet()){
        avater=Image.network(
          conversation.avatar,
          width: AppIconsConfig.ConversationAvaterSize,
          height: AppIconsConfig.ConversationAvaterSize,
         );
      }else{
       avater=Image.asset(
          conversation.avatar,
          width: AppIconsConfig.ConversationAvaterSize,
          height: AppIconsConfig.ConversationAvaterSize,
      );
     }
     Widget avatarContainer;
     if (conversation.unReadMsgCount>0){
     // 定义未读消息角标组件
     Widget unreadMsgCountText=Container(
       width: AppIconsConfig.UnReadMsgNotifyDotSize,
       height: AppIconsConfig.UnReadMsgNotifyDotSize,
       alignment: Alignment.center,// 未读消息数量居中红点处理
       decoration: BoxDecoration(
         borderRadius:BorderRadius.circular(AppIconsConfig.UnReadMsgNotifyDotSize/2.0),//圆角
        color: Color(AppColors.NotifyDotBg),//圆点背景颜色
       ),
       child:Text(conversation.unReadMsgCount.toString(),
       style:AppStyles.UnreadMsgCountDotStyle),
     );
    // 定义Stack 头像和未读消息
    // 组件有先后顺序 后面覆盖前面 mark!!
     avatarContainer= Stack(
      overflow: Overflow.visible,
      children: <Widget>[
          avater,
         // unreadMsgCountText,
         Positioned(// 类似css position: absolute;绝对布局  android中AbsoluteLayout。。。。
           right: -6.0,
           top: -6.0,
           child: unreadMsgCountText,
         )
      ],
    );
    }else{
      avatarContainer=avater;
    }
    //定义勿扰模式icon
    // Widget muteIcon=Icon(IconData(
    //   0xe669,
    //   fontFamily: AppIconsConfig.IconFontFamily,
    //   ),
    //   color: Color(AppColors.CibversationMuteIconBg),
    //   size: AppIconsConfig.CibversationMuteIconSize,
    // );
    var _rightStyle=<Widget> [
        Text(conversation.updateAT,style:AppStyles.DesStyle,),
        // Container(height: 10.0,),
        SizedBox(height: 10.0,)
        ];
        if (conversation.isMute){
            _rightStyle.add(
      Icon(IconData(
          0xe669,
           fontFamily: AppIconsConfig.IconFontFamily,
          ),
         color: Color(AppColors.CibversationMuteIconBg),
         size: AppIconsConfig.CibversationMuteIconSize,
         ),
        );    
        }else{
        _rightStyle.add(
             Icon(IconData(
             0xe669,
              fontFamily: AppIconsConfig.IconFontFamily,
           ),
              color: Colors.transparent,//透明。。。
              size: AppIconsConfig.CibversationMuteIconSize,
         ),
        );    
      }
     return Container(
       padding: const EdgeInsets.all(10.0),//边距
       decoration: BoxDecoration(
         border: Border(
           bottom: BorderSide(
             color: Color(AppColors.DividerColor),
             width: AppIconsConfig.DividerWidth,),
         )
       ),
       child: Row(
         crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Image.asset('assets/images/default_nor_avatar.png',
          avatarContainer,
          Container(width: 10.0,),
      Expanded(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start ,
          children: <Widget>[
            Text(conversation.title,style: AppStyles.TitleStyle,),
             Text(conversation.des,style: AppStyles.DesStyle,),
          ],
        ),
        ),
          Container(width: 10.0,),
         Column(
           children: _rightStyle,
         )
        ],
       )
     );
   }
 }
class ConversationPage extends StatefulWidget {
  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context,int index){
        return _ConversationItem(conversation:mockConversations[index]);
      },
      itemCount: mockConversations.length,

    );
  }
}