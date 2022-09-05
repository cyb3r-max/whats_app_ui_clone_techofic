import 'package:flutter/material.dart';
import 'package:whats_app_ui_clone/Widget/tabController.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: AppBarWithTabController(),
      debugShowCheckedModeBanner: false,
    );
  }
}
