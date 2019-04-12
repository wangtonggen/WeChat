import 'package:flutter/material.dart';
import 'homePage.dart';
import 'addressBookPage.dart';
import 'findPage.dart';
import 'package:wechat/MyPage.dart';

class MainPage extends StatefulWidget {
  MainPage();

  @override
  State createState() => _MainPageState();
}

///主页面
class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

//  final TextStyle _style = new TextStyle(color: Colors.greenAccent,fontSize: 14.0);
  final List<StatefulWidget> widgets = [
    new HomePage(),
    new AddressBookPage(),
    new FindPage(),
    new MyPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("微信"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add_circle_outline), onPressed: (){

          })
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
//          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
//          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
//          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("微信")),
          BottomNavigationBarItem(icon: Icon(Icons.comment),title: Text("通讯录")),
          BottomNavigationBarItem(icon: Icon(Icons.find_replace),title: Text("发现")),
          BottomNavigationBarItem(icon: Icon(Icons.person),title: Text("我")),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTap,
      ),
      body: widgets[_selectedIndex],
    );
//    return Scaffold(
//      appBar: AppBar(
//        //导航栏
//        title: Text("App Name"),
//        actions: <Widget>[
//          //导航栏右侧菜单
//          IconButton(icon: Icon(Icons.share), onPressed: () {}),
//        ],
//      ),
//      bottomNavigationBar: BottomNavigationBar(
//        // 底部导航
//        items: <BottomNavigationBarItem>[
//          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
//          BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('Business')),
//          BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('School')),
//        ],
//        currentIndex: _selectedIndex,
//        fixedColor: Colors.blue,
//        onTap: _onItemTap,
//      ),
//      floatingActionButton: FloatingActionButton(
//          //悬浮按钮
//          child: Icon(Icons.add),
//          onPressed: _onAdd),
//    );
  }

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
    });
  }

  void _onAdd() {}
}
