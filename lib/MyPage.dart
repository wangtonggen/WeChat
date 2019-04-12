import 'package:flutter/material.dart';

class MyPage extends StatefulWidget{

  @override
  State createState() => _MyPageState();
}

///我的页面
class _MyPageState extends State<MyPage>{

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("我的",style: TextStyle(color: Colors.greenAccent,fontSize: 30.0),),
    );
  }
}