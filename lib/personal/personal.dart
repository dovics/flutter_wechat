import 'package:flutter/material.dart';
import 'package:wechat/common/im_item.dart';
import 'package:wechat/common/touch_callback.dart';

class Personal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            height: 80.0,
            child: TouchCallBack(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left: 12.0, right: 15.0),
                    child: Image.network(
                      'https://pic2.zhimg.com/80/v2-f6fe25b8a200a594684a4a33aaecf018_720w.jpg',
                      height: 70.0,
                      width: 70.0,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'aaaa',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFF353535),
                          ),
                        ),
                        Text(
                          'bbb',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Color(0xFFa9a9a9),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 12.0, right: 15.0),
                    child: Image.asset(
                      'images/icon_qrcode.png',
                      width:20.0,
                      height:20.0,
                    ),
                  )
                ],
              ),
              onPressed: (){},
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: ImItem(
              title: '支付',
              imagePath: 'images/icon_me_payment.png',
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                ImItem(
                  title: '收藏',
                  imagePath: 'images/icon_me_collect.png',
                ),
                ImItem(
                  title: '相册',
                  imagePath: 'images/icon_me_photoes.png',
                ),
                ImItem(
                  title: '卡包',
                  imagePath: 'images/icon_me_card.png',
                ),
                ImItem(
                  title: '表情',
                  imagePath: 'images/icon_me_emoji.png',
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: ImItem(
              title: '设置',
              imagePath: 'images/icon_me_setting.png',
            ),
          ),
        ],
      ),
    );
  }
}