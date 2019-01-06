import 'package:flutter/material.dart';
import '../appconfig.dart'show AppColors;

class  Conversation {
  const Conversation({
    @required this.avatar,
    @required this.title,
    this.titleColor:AppColors.TitleTextColor,
    this.des,
    @required this.updateAT,
    this.isMute : false,
    this.unReadMsgCount :0, //未读消息默认位0
    this.displayDot:false,
  }):assert(avatar !=null),
     assert(title !=null),
     assert(updateAT !=null);

  final String avatar;
  final String title;
  final int titleColor;
  final String des;
  final String updateAT;
  final bool isMute;
  final int unReadMsgCount;
  final bool displayDot;
}
const  List<Conversation> mockConversations=[
const Conversation(
    avatar: 'assets/images/ic_file_transfer.png',
    title: '文件助手',
    des:'',
    isMute:false,
    updateAT: '21:00',
    unReadMsgCount:0,
),
const Conversation(
    avatar: 'https://randomuser.me/api/portraits/men/42.jpg',
    title: '绝影七殇',
    des:'吃饭了吗？',
    isMute:false,
    updateAT: '21:00',
     unReadMsgCount:1,
),
const Conversation(
    avatar: 'https://randomuser.me/api/portraits/women/74.jpg',
    title: 'sert',
    des:'womenwomenwomenwomen?',
    isMute:false,
    updateAT: '21:00',
     unReadMsgCount:1,
),
const Conversation(
    avatar: 'https://randomuser.me/api/portraits/women/74.jpg',
    title: '还是短发好',
    des:'womenwomenwomenwomen?',
    isMute:false,
    updateAT: '21:00',
     unReadMsgCount:1,
),
const Conversation(
    avatar: 'assets/images/ic_file_transfer.png',
    title: '文件助手',
    des:'',
    isMute:false,
    updateAT: '21:00',
    unReadMsgCount:0,
),
const Conversation(
    avatar: 'https://randomuser.me/api/portraits/men/42.jpg',
    title: '绝影七殇',
    des:'吃饭了吗？',
    isMute:false,
    updateAT: '21:00',
     unReadMsgCount:1,
),
const Conversation(
    avatar: 'https://randomuser.me/api/portraits/women/74.jpg',
    title: 'sdfdsfsd34',
    des:'womenwomenwomenwomen?',
    isMute:false,
    updateAT: '21:00',
     unReadMsgCount:1,
),
const Conversation(
    avatar: 'https://randomuser.me/api/portraits/women/74.jpg',
    title: '还是短发好',
    des:'womenwomenwomenwomen?',
    isMute:false,
    updateAT: '21:00',
     unReadMsgCount:1,
),
const Conversation(
    avatar: 'assets/images/ic_file_transfer.png',
    title: '邯郸',
    des:'',
    isMute:false,
    updateAT: '21:00',
    unReadMsgCount:0,
),
const Conversation(
    avatar: 'https://randomuser.me/api/portraits/men/42.jpg',
    title: '绝影七殇',
    des:'吃饭了吗？',
    isMute:false,
    updateAT: '21:00',
     unReadMsgCount:1,
),
const Conversation(
    avatar: 'https://randomuser.me/api/portraits/women/74.jpg',
    title: '第三方的是',
    des:'womenwomenwomenwomen?',
    isMute:false,
    updateAT: '21:00',
     unReadMsgCount:1,
),
const Conversation(
    avatar: 'https://randomuser.me/api/portraits/women/74.jpg',
    title: '第三方风格',
    des:'womenwomenwomenwomen?',
    isMute:false,
    updateAT: '21:00',
     unReadMsgCount:1,
),
const Conversation(
    avatar: 'assets/images/ic_file_transfer.png',
    title: '第三方多点',
    des:'',
    isMute:false,
    updateAT: '21:00',
    unReadMsgCount:0,
),
const Conversation(
    avatar: 'https://randomuser.me/api/portraits/men/42.jpg',
    title: '颠三倒四',
    des:'吃饭了吗？',
    isMute:false,
    updateAT: '21:00',
     unReadMsgCount:1,
),
const Conversation(
    avatar: 'https://randomuser.me/api/portraits/women/74.jpg',
    title: '塞法',
    des:'womenwomenwomenwomen?',
    isMute:false,
    updateAT: '21:00',
     unReadMsgCount:1,
),
const Conversation(
    avatar: 'https://randomuser.me/api/portraits/women/74.jpg',
    title: '是的发送到',
    des:'womenwomenwomenwomen?',
    isMute:false,
    updateAT: '21:00',
     unReadMsgCount:1,
),
];