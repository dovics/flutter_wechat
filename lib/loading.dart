import 'package:flutter/cupertino.dart';

class LoadingPage extends StatefulWidget{
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<LoadingPage>{
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.of(context).pushReplacementNamed("app");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Image.asset("images/loading.jpg",fit: BoxFit.cover)
        ],
      ),
    );
  }
}