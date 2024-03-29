import 'package:flutter/material.dart';
import 'package:ui_clone/Starbucks/starbucks_screen.dart';
import 'package:ui_clone/kakaoTalk/kakao_bottom_bar.dart';
import 'package:ui_clone/ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const StarbucksScreen(),
    );
  }
}

