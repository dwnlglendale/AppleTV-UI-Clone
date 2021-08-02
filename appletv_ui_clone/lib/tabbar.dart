import 'package:appletv_ui_clone/library.dart';
import 'package:appletv_ui_clone/originals.dart';
import 'package:appletv_ui_clone/search.dart';
import 'package:appletv_ui_clone/watch_now.dart';
import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({Key? key}) : super(key: key);

  @override
  _TabbarState createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) {
          setState(() {
            this._selectedTab = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle),
            label: "Watch Now",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: "Originals",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: "Library",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
        ],
      ),
      body: Stack(
        children: [
          renderView(
            0,
            WatchNow(),
          ),
          renderView(
            1,
            Originals(),
          ),
          renderView(
            2,
            Library(),
          ),
          renderView(
            3,
            Search(),
          ),
        ],
      ),
    );
  }

  Widget renderView(int tabIndex, Widget view) {
    return IgnorePointer(
      ignoring: _selectedTab != tabIndex,
      child: Opacity(
        opacity: _selectedTab == tabIndex ? 1 : 0,
        child: view,
      ),
    );
  }
}
