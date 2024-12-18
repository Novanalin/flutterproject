import 'package:flutter/material.dart';
import 'package:flutterproject/layout/home/Newspage.dart';
import 'MyHomePage.dart';
import 'ListViewLearning.dart';
import 'GridViewLearning.dart';
import 'package:flutterproject/layout/home/PostNews.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _tabs = const [
    NewsPage(), // Uncommented this line
    //MyHomePage(), // Uncommented this line
    GridViewLearning(),
    ListsWithCards(),
    PostNews(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Demo'),
      ),
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.cyan,
        unselectedItemColor: Colors.redAccent,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_3x3),
            label: 'GridView',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'ListView',
          ),
          BottomNavigationBarItem( // Correctly closed this item
            icon: Icon(Icons.post_add),
            label: 'Post Data',
          ),
        ],
      ),
    );
  }
}