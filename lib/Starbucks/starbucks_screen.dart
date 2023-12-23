import 'package:flutter/material.dart';
import 'package:ui_clone/Starbucks/presentation/MyHemoPage.dart';

class StarbucksScreen extends StatefulWidget {
  const StarbucksScreen({super.key});

  @override
  State<StarbucksScreen> createState() => _StarbucksScreenState();
}

class _StarbucksScreenState extends State<StarbucksScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    MyHomePage(),
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
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.credit_card_outlined),
              activeIcon: Icon(Icons.credit_card),
              label: 'pay',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.coffee_outlined),
              activeIcon: Icon(Icons.coffee),
              label: 'Order',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              activeIcon: Icon(Icons.shopping_bag),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz_outlined),
              activeIcon: Icon(Icons.more_horiz_outlined),
              label: 'Other',
            ),
          ],

        ),

      ),
    );
  }
}
