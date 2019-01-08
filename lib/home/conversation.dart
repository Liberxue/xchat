import 'package:flutter/material.dart';
import '../appconfig.dart'show AppColors;

enum Device{
  MAC,WIN
}
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
  bool isAvaterFormNet(){
    // 判断http || https 为网络图片 
    if(this.avatar.indexOf('http')==0||
    this.avatar.indexOf('https')==0){
          return true;
    }
        return false;
  }
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
    title: '长得帅就不要想的美',
    des:'吃饭了吗？',
    isMute:true,
    updateAT: '21:00',
    unReadMsgCount:1,
),
const Conversation(
    avatar: 'assets/images/ic_tx_news.png',
    title: '腾讯新闻',
    des:'大数据不靠谱分析新闻，专业代发广告软文',
    isMute:false,
    updateAT: '21:00',
     unReadMsgCount:5,
),
const Conversation(
    avatar: 'https://randomuser.me/api/portraits/women/24.jpg',
    title: '小米',
    des:'womenwomenwomenwomen?',
    isMute:false,
    updateAT: '21:00',
     unReadMsgCount:1,
),
const Conversation(
    avatar: 'https://randomuser.me/api/portraits/men/10.jpg',
    title: '小王',
    des:'',
    isMute:true,
    updateAT: '21:00',
    unReadMsgCount:33,
),
const Conversation(
    avatar: 'https://randomuser.me/api/portraits/men/42.jpg',
    title: '小红',
    des:'小红小红小红小红',
    isMute:false,
    updateAT: '21:00',
     unReadMsgCount:2,
),
const Conversation(
    avatar: 'https://randomuser.me/api/portraits/women/14.jpg',
    title: '不忍释手',
    des:'嘚瑟',
    isMute:false,
    updateAT: '21:00',
     unReadMsgCount:10,
),
const Conversation(
    avatar: 'https://randomuser.me/api/portraits/women/34.jpg',
    title: '还是短发好',
    des:'womenwomenwomenwomen?',
    isMute:false,
    updateAT: '21:00',
     unReadMsgCount:1,
),
const Conversation(
    avatar: 'https://randomuser.me/api/portraits/men/92.jpg',
    title: '邯郸',
    des:'对方不想说话',
    isMute:false,
    updateAT: '21:00',
    unReadMsgCount:35,
),
const Conversation(
    avatar: 'https://randomuser.me/api/portraits/men/32.jpg',
    title: '多多岛',
    des:'吃饭了吗？',
    isMute:false,
    updateAT: '21:00',
     unReadMsgCount:13,
),
const Conversation(
    avatar: 'https://randomuser.me/api/portraits/women/70.jpg',
    title: '第三方的是',
    des:'womenwomenwomenwomen?',
    isMute:false,
    updateAT: '21:00',
     unReadMsgCount:1,
),
const Conversation(
    avatar: 'https://randomuser.me/api/portraits/women/71.jpg',
    title: '第三方风格',
    des:'womenwomenwomenwomen?',
    isMute:false,
    updateAT: '21:00',
     unReadMsgCount:1,
),
];

// const Map<String,List<Conversation>> mockConversationData={
//   'deviceInfo':null,
//   'conversations':mockConversations,
// };