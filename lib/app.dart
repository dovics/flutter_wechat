import 'package:flutter/material.dart';
import 'package:wechat/contacts/contacts.dart';
import 'package:wechat/find/find.dart';
import 'package:wechat/personal/personal.dart';
import './chat/message_page.dart';

class App extends StatefulWidget{
  AppState createState() => AppState();
}

class AppState extends State<App>{
  var _currentIndex = 0;
  MessagePage message;
  Contacts contacts;
  FindPage find;
  Personal me;
  currentPage() {
    switch (_currentIndex) {
      case 0:  
        if (message == null) {
          message = MessagePage();
        }
        return message;
      case 1:
        if (contacts == null) {
          contacts = Contacts();
        }
        return contacts;
      case 2:
        if (find == null) {
          find = FindPage();
        }
        return find;
      case 3:
        if (me == null) {
          me = Personal();
        }
        return me;
    }
  }

  _popupMenuItem(String title, {String imagePath, IconData icon}) {
    return PopupMenuItem(
      child: Row(
        children: <Widget>[
          imagePath != null 
            ? Image.asset(
                imagePath,
                width: 32.0,
                height: 32.0,
            )
            : SizedBox(
              width: 32.0,
              height: 32.0,
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                title,
                style: TextStyle(color: Colors.white),
              ),)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("微信"),
        actions: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, 'search');
            },
            child: Icon(
              Icons.search,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 20.0),
            child: GestureDetector(
              onTap: () {
                showMenu(
                  context: context, 
                  position: RelativeRect.fromLTRB(500.0, 76.0, 10.0, 0.0), 
                  items: <PopupMenuEntry>[
                    _popupMenuItem('发起群聊',
                      imagePath: 'images/icon_menu_group.png'),
                    _popupMenuItem('添加好友',
                      icon: Icons.person_add),
                    _popupMenuItem('联系客服',
                      icon: Icons.person), 
                  ],
                );
              },
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: ((index) {
          setState(() {
            _currentIndex = index;
          });
        }),
        items: [
          BottomNavigationBarItem(
            title: Text(
              '聊天',
              style: TextStyle(
                color: _currentIndex == 0? Color(0xFF46c01b):Color(0xff999999),
              ),
            ),
            icon: _currentIndex == 0? Image.asset(
              'images/message_pressed.png',
              width: 32.0,
              height: 28.0,
            ): Image.asset(
              'images/message_normal.png',
              width: 32.0,
              height: 28.0,
            )
          ),
          BottomNavigationBarItem(
            title: Text(
              '通讯录',
              style: TextStyle(
                color: _currentIndex == 1? Color(0xFF46c01b):Color(0xff999999),
              ),
            ),
            icon: _currentIndex == 1? Image.asset(
              'images/contact_list_pressed.png',
              width: 32.0,
              height: 28.0,
            ): Image.asset(
              'images/contact_list_normal.png',
              width: 32.0,
              height: 28.0,
            )
          ),
          BottomNavigationBarItem(
            title: Text(
              '发现',
              style: TextStyle(
                color: _currentIndex == 2? Color(0xFF46c01b):Color(0xff999999),
              ),
            ),
            icon: _currentIndex == 2? Image.asset(
              'images/find_pressed.png',
              width: 32.0,
              height: 28.0,
            ): Image.asset(
              'images/find_normal.png',
              width: 32.0,
              height: 28.0,
            )
          ),
          BottomNavigationBarItem(
            title: Text(
              '我',
              style: TextStyle(
                color: _currentIndex == 3? Color(0xFF46c01b):Color(0xff999999),
              ),
            ),
            icon: _currentIndex == 3? SizedBox(
              width: 32.0,
              height: 28.0,
              child: Icon(
                Icons.person,
                color: Colors.green,
              ),
            ): SizedBox(
              width: 32.0,
              height: 28.0,
              child: Icon(
                Icons.person,
                color: Colors.black38,
              ),
            )
          ),
        ],
      ),
      body: currentPage(),
    );
  }
}