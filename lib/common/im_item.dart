import 'package:flutter/material.dart';
import './touch_callback.dart';
class ImItem extends StatelessWidget{ 
  final String title;
  final String imagePath;
  final Icon icon;

  ImItem({Key key, @required this.title, this.imagePath, this.icon}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return TouchCallBack(
      onPressed: (){
        switch(title) {
        case '朋友圈':
          Navigator.pushNamed(context, '/friends');
          break;
        case '设置':
          break;
        }
      },
      child: Container(
        height: 50.0,
        child: Row(
          children: <Widget>[
            Container(
              child: imagePath != null? Image.asset(
                imagePath,
                width:25.0,
                height: 25.0,
              ):SizedBox(
                height: 25.0,
                width: 25.0,
                child: icon,
              ),
              margin: const EdgeInsets.only(left: 22.0, right: 20.0),
            ),
            Text(
              title,
              style: TextStyle(fontSize: 16.0, color: Color(0xFF353535)),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(right: 14.0, left: 14.0),
                alignment: Alignment.centerRight,
                child: Icon(Icons.keyboard_arrow_right, color: Color(0xFF353535)),
              ),
            ),
          ],
        ),
      )
    );
  }
}