import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icodegram/nav_bar/add_post_screen.dart';
import 'package:icodegram/nav_bar/home_screen.dart';
import 'package:icodegram/nav_bar/profile_screen.dart';

class ScreenLayout extends StatefulWidget {
  const ScreenLayout({super.key});

  @override
  State<ScreenLayout> createState() => _ScreenLayoutState();
}

class _ScreenLayoutState extends State<ScreenLayout> {
  int _page = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: pageController,
          onPageChanged: onPageChanged,
          children: [
            HomeScreen(),
            AddPostScreen(),
            ProfileScreen(),
          ],
        ),
      ),
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: Colors.black,
        onTap: navigationTapped,
        items: [
          BottomNavigationBarItem(
              icon: Column(
                children: [
                  Icon(
                    Icons.home_filled,
                    color: _page == 0 ? Colors.orange : Colors.white,
                    size: 26,
                  ),
                  Padding(padding: EdgeInsets.only(top: 2)),
                  Icon(Icons.circle,
                  color: _page == 0 ? Colors.orange : Colors.black,
                  size: 6,)
                ],
              ),
            backgroundColor: Colors.black,
            label: ''
          ),
          BottomNavigationBarItem(
              icon: Column(
                children: [
                  Icon(
                    Icons.add_box_outlined,
                    color: _page == 1 ? Colors.orange : Colors.white,
                    size: 26,
                  ),
                  Padding(padding: EdgeInsets.only(top: 2)),
                  Icon(Icons.circle,
                    color: _page == 1 ? Colors.orange : Colors.black,
                    size: 6,)
                ],
              ),
              backgroundColor: Colors.black,
              label: ''
          ),
          BottomNavigationBarItem(
              icon: Column(
                children: [
                  Icon(
                    Icons.person_outlined,
                    color: _page == 2 ? Colors.orange : Colors.white,
                    size: 26,
                  ),
                  Padding(padding: EdgeInsets.only(top: 2)),
                  Icon(Icons.circle,
                    color: _page == 2 ? Colors.orange : Colors.black,
                    size: 6,)
                ],
              ),
              backgroundColor: Colors.black,
              label: ''
          ),
        ],
      ),
    );
  }
}
