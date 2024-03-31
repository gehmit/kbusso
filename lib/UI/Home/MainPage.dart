
import 'package:flutter/material.dart';
import 'package:gehmit/UI/Home/HomePage.dart';

import 'MyDrawer/MyDrawer.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}


class _MainPageState extends State<MainPage> {

  final List<Widget> _tabs = [
    HomePage(),
    SizedBox(),
    SizedBox(),
  ] ;
  int _selectedTab = 0;

  void _onTabBarChange(index) {
    print(index);
    setState(() {
      switch (index) {
        case 1:
          if (_tabs[index] is SizedBox) {
            _tabs[index] = Text("Chat");
          }
        default:
        //
      }
      _selectedTab = index;
    });

  }

  @override
  Widget build(BuildContext context) {

return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("KBUSSO"),
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Colors.white,
        ),
        drawer: MyDrawer(),
        body: _tabs[_selectedTab],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          onTap: _onTabBarChange,
          items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Accueil"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Paramètre"),
        ],),
      ),
    );
  }

}



