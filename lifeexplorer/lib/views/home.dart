import 'package:flutter/material.dart';
import 'package:lifeexplorer/pages/map_page.dart';
import 'package:lifeexplorer/pages/news_page.dart';
import 'package:lifeexplorer/pages/search_page.dart';
import 'package:lifeexplorer/views/widgets/info_card.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  final screens = [MapPage(), SearchPage(), NewsPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.explore),
              SizedBox(width: 10),
              Text('Life Explorer')
            ]),
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Map'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.article_outlined), label: 'News')
        ],
      ),
    );
  }
}
