import 'package:flutter/material.dart';

import 'package:chat/components/todo_page.dart';
import 'package:chat/components/user_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final List<Map<String, dynamic>> tabBarNav = [
    {'title': Text('user'), 'icon': Icon(Icons.account_circle_rounded)},
    {'title': Text('todo'), 'icon': Icon(Icons.assignment_outlined)}
  ];

  TabController _tabController;
  // ScrollController _scrollViewController;
  int _currentTabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: tabBarNav.length,
      vsync: this,
      initialIndex: 0,
    );
    _tabController.addListener(_tabListener);
    // _scrollViewController = ScrollController();
  }

  _tabListener() {
    setState(() {
      _currentTabIndex = _tabController.index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          UserPage(),
          TodoPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          print(index);
          setState(() {
            _tabController.index = index;
            _currentTabIndex = index;
          });
        },
        currentIndex: _currentTabIndex,
        items: tabBarNav
            .map(
              (item) => BottomNavigationBarItem(
                icon: item['icon'],
                title: item['title'],
              ),
            )
            .toList(),
      ),
    );
  }
}