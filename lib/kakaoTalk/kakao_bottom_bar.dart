import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_clone/Starbucks/presentation/MyHemoPage.dart';

import 'package:ui_clone/kakaoTalk/chatting_screen/chatting_screen.dart';

class KakaoTalkScreen extends StatefulWidget {
  const KakaoTalkScreen({super.key});

  @override
  State<KakaoTalkScreen> createState() => _KakaoTalkScreenState();
}

class _KakaoTalkScreenState extends State<KakaoTalkScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    ChattingScreen(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  void _onNavTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: _screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              activeIcon: Icon(Icons.person_2_outlined),
              label: '친구',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble_fill),
              activeIcon: Icon(CupertinoIcons.chat_bubble_fill),
              label: '채팅',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble_2_fill),
              activeIcon: Icon(CupertinoIcons.chat_bubble_2_fill),
              label: '오픈채팅',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              activeIcon: Icon(Icons.shopping_bag),
              label: '쇼핑',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz_outlined),
              activeIcon: Icon(Icons.more_horiz_outlined),
              label: '더보기',
            ),
          ],
        ),
      ),
    );
  }
}
