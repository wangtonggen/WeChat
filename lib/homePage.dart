import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{

  @override
  State createState() => _HomePageState();
}



///微信首页
class _HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("首页",style: TextStyle(color: Colors.greenAccent,fontSize: 30.0),),
    );
  }
}