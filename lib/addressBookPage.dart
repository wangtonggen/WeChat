import 'package:flutter/material.dart';

class AddressBookPage extends StatefulWidget{

  @override
  State createState() => _AddressBookPageState();
}

///通讯录页面
class _AddressBookPageState extends State<AddressBookPage>{

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("通讯录",style: TextStyle(color: Colors.greenAccent,fontSize: 30.0),),
    );
  }
}