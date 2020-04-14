import 'package:flutter/material.dart';
import 'package:wechat/common/im_item.dart';

class FindPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: ImItem(
              title: '朋友圈',
              imagePath: 'images/icon_find_moments.png',
            )
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: ImItem(
              title: '扫一扫',
              imagePath: 'images/icon_find_scan.png',
            )
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                ImItem(
                  title: '看一看',
                  imagePath: 'images/icon_find_look.png',
                ),
                ImItem(
                  title: '搜一搜',
                  imagePath: 'images/icon_find_search.png',
                ),
              ],
            )
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: ImItem(
              title: '附近的人',
              imagePath: 'images/icon_find_nearperson.png',
            )
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                ImItem(
                  title: '购物',
                  imagePath: 'images/icon_find_shopping.png',
                ),
                ImItem(
                  title: '游戏',
                  imagePath: 'images/icon_find_game.png',
                ),
              ],
            )
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: ImItem(
              title: '小程序',
              imagePath: 'images/icon_find_applets.png',
            )
          ),
        ],

      ),
    );
  }
}