//@dart=2.9
import 'package:localcart/list.dart';
import 'package:localcart/home.dart';
import 'package:flutter/material.dart';

class AppBase extends StatefulWidget {
  const AppBase({Key key}) : super(key: key);

  @override
  _AppBaseState createState() => _AppBaseState();
}

class _AppBaseState extends State<AppBase> {
  final List<Widget> tabs = [
    const HomePage(),
    const ListPage(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  // int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: _bottomNavigationBar(_selectedIndex),
      body: PageStorage(
        child: tabs[0],
        bucket: bucket,
      ),
    );
  }
}
