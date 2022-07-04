import 'package:flutter/material.dart';

import 'homepage_widget.dart';
import 'mine_widget.dart';
import 'tool_widget.dart';

class Launcher extends StatefulWidget {
  const Launcher({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LauncherState();
  }
}

class _LauncherState extends State<Launcher> {
  int _currentIndex = 0;

  final _pageController = PageController(
    initialPage: 0,
  );

  final _bottomItem = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "首页",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.dashboard),
      label: "工具页",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: "我的",
    )
  ];

  final List<Widget> _children = [
    const HomePageWidget(color: Colors.white),
    const ToolWidget(),
    const MineWidget(color: Colors.white),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        elevation: 7,
        title: Text(_bottomItem[_currentIndex].label.toString()),
      ),*/
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: _children,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex:
            _currentIndex, // this will be set when a new tab is tapped
        items: _bottomItem,
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
      ),
    );
  }

  void onTabTapped(int index) {
    // 控制 PageView 跳转到指定的页面
    _pageController.jumpToPage(index);
    setState(() {
      // 更新当前的索引值
      _currentIndex = index;
    });
  }
}
