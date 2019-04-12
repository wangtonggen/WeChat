import 'package:flutter/material.dart';

class FindPage extends StatefulWidget{

  @override
  State createState() => _FindPageState();
}

///发现页面
class _FindPageState extends State<FindPage>{

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("发现",style: TextStyle(color: Colors.greenAccent,fontSize: 30.0),),
    );
  }
}