import 'package:flutter/material.dart';
import 'dart:convert';

class HomePage extends StatefulWidget{

  @override
  State createState() => _HomePageState();
}


///微信首页
class _HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
          future: DefaultAssetBundle.of(context).loadString("json/chat_json.json"),
          builder: (context,snapshot){
            List mData = json.decode(snapshot.data.toString());
            return ListView.builder(itemCount: mData.length,itemBuilder: (BuildContext context,int index){
              print(index);
              return new Padding(
                padding: EdgeInsets.only(left: 10.0,top: 10.0,right: 10.0,bottom: 0.0),
                child: new Row(
                  children: <Widget>[
                    Image.network(mData[index]["image"],width: 50.0,height: 50.0,fit: BoxFit.none,),
                    Column(
                      children: <Widget>[
                        Stack(),

                      ],
                    )
                  ],
                ),
              );
            });
          }),
    );
  }
}