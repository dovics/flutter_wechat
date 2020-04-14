import 'package:flutter/material.dart';
import 'package:wechat/chat/message_data.dart';
import 'package:wechat/chat/message_item.dart';

class MessagePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MessagePageState();
  }
}

class MessagePageState extends State<MessagePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: messageDate.length,
        itemBuilder: (BuildContext context, int index){
          return MessageItem(messageDate[index]);
        } 
      ),
    );
  }
}