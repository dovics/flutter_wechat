import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:wechat/search.dart';
import './app.dart';
import './loading.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: '聊天室',
    theme: mDefaultTheme,
    routes: <String, WidgetBuilder>{
      "app":(BuildContext context) => App(),
      "/friends": (_) => WebviewScaffold(
        url: "https://flutter.io/",
        appBar:AppBar(title: Text("Flutter官网"),
        ),
        withZoom: true,
        withLocalStorage: true,
      ),
      "search": (BuildContext context) => Search(),
    },
    home: LoadingPage(),
));

final ThemeData mDefaultTheme = ThemeData(
  primaryColor: Color(0xFFebebeb),
  scaffoldBackgroundColor: Color(0xFFebebeb),
  cardColor: Color(0xFF4d4d4d),
);