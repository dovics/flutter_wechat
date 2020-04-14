enum MessageType{
  SYSTEM,
  PUBLIC,
  CHAT,
  GROUP
}

class MessageData{
  String avatar;
  String title;
  String subTitle;
  DateTime time;
  MessageType type;

  MessageData(this.avatar, this.title, this.subTitle, this.time, this.type);
}

List<MessageData> messageDate = [
  MessageData(
    'https://pic1.zhimg.com/80/v2-e72eccc4e69a715aae8711bde0106381_720w.jpg',
    '小明',
    '明明明',
    DateTime.now(),
    MessageType.CHAT
  ),
  MessageData(
    'https://pic3.zhimg.com/80/v2-dc6499c709a3d984077d51340033f7ac_720w.jpg',
    '小明',
    '明明明',
    DateTime.now(),
    MessageType.CHAT
  ),
  MessageData(
    'https://pic3.zhimg.com/80/v2-1a3afa34d99252d2feaf6a8aa16e6b19_720w.jpg',
    '小明',
    '明明明',
    DateTime.now(),
    MessageType.CHAT
  ),
];