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
  Color iconColor = Colors.black;
  final TextStyle titleStyle = TextStyle(fontSize: 20.0, color: Colors.black);
  var title = "微信";
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
        backgroundColor: _selectedIndex != 3 ? Colors.grey : Colors.white,
        title: Text(
          title,
          style: titleStyle,
        ),
        actions: _selectedIndex != 3
            ? <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.search,
                      color: iconColor,
                    ),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(
                      Icons.add_circle_outline,
                      color: iconColor,
                    ),
                    onPressed: () {})
              ]
            : <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.camera_alt,
                    color: iconColor,
                  ),
                  onPressed: () {},
                )
              ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("微信")),
          BottomNavigationBarItem(
              icon: Icon(Icons.comment), title: Text("通讯录")),
          BottomNavigationBarItem(
              icon: Icon(Icons.find_replace), title: Text("发现")),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("我")),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.green,
        onTap: _onItemTap,
      ),
      body: widgets[_selectedIndex],
    );
  }

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
      switch (_selectedIndex) {
        case 0:
          title = "微信";
          break;
        case 1:
          title = "通讯录";
          break;
        case 2:
          title = "发现";
          break;
        default:
          title = "";
          break;
      }
      print(_selectedIndex);
    });
  }
}
