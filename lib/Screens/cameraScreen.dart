import 'package:flutter/material.dart';

class CamerTabScreen extends StatefulWidget {
  const CamerTabScreen({Key? key}) : super(key: key);

  @override
  State<CamerTabScreen> createState() => _CamerTabScreenState();
}

class _CamerTabScreenState extends State<CamerTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Camera")));
  }
}
