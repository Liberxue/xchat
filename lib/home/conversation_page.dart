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
     // 定义未读消息角标组件
     Widget unreadMsgCountText=Container(
       width: AppIconsConfig.UnReadMsgNotifyDotSize,
       height: AppIconsConfig.UnReadMsgNotifyDotSize,
       decoration: BoxDecoration(
         borderRadius:BorderRadius.circular(AppIconsConfig.UnReadMsgNotifyDotSize/2.0),//圆角
        color: Color(AppColors.NotifyDotBg),//圆点背景颜色
       ),
       child:Text('99',style:AppStyles.UnreadMsgCountDotStyle),
     );

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
          avater,
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
           children: <Widget>[
              Text(conversation.updateAT,style:AppStyles.DesStyle,),
           ],
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