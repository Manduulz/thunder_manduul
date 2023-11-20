import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson_day_28_flutter/add_post_screen.dart';
import 'package:lesson_day_28_flutter/add_profile_screen.dart';
import 'package:lesson_day_28_flutter/home_screen.dart';

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
    pageController.dispose();
    super.dispose();
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
      body: SafeArea(
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: pageController,
          onPageChanged: onPageChanged,
          children: [
            HomeScreen(),
            AddPostScreen(),
            ProfileScreen()
          ],
        ),
      ),
      bottomNavigationBar: CupertinoTabBar(
        onTap: navigationTapped,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: _page == 0 ? Colors.blue : Colors.black,
                ),
              backgroundColor: Colors.white,
              label: ''
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_box_outlined,
                  color: _page == 1 ? Colors.blue : Colors.black,
                ),
                backgroundColor: Colors.white,
                label: ''
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: _page == 2 ? Colors.blue : Colors.black,
                ),
                backgroundColor: Colors.white,
                label: ''
            ),
          ]
      )
      );
  }
}
