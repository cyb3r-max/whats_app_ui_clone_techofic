import 'package:flutter/material.dart';
import 'package:whats_app_ui_clone/Screens/callScreen.dart';
import 'package:whats_app_ui_clone/Screens/cameraScreen.dart';
import 'package:whats_app_ui_clone/Screens/homeScreen.dart';
import 'package:whats_app_ui_clone/Screens/statusScreen.dart';

class AppBarWithTabController extends StatefulWidget {
  const AppBarWithTabController({Key? key}) : super(key: key);

  @override
  State<AppBarWithTabController> createState() =>
      _AppBarWithTabControllerState();
}

class _AppBarWithTabControllerState extends State<AppBarWithTabController>
    with TickerProviderStateMixin {
  List<Widget> tabs = [
    Tab(icon: Icon(Icons.camera_alt_rounded)),
    Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Tab(
          text: "Chat",
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          padding: EdgeInsets.all(5),
          alignment: Alignment.center,
          decoration:
              BoxDecoration(color: Colors.green, shape: BoxShape.circle),
          child: Text(
            "1",
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ],
    ),
    Tab(
      text: "Status",
    ),
    Tab(
      text: "Calls",
    )
  ];
  List<Widget> _views = [
    CamerTabScreen(),
    HomeScreen(),
    StatusScreen(),
    CallsScreen(),
  ];

  late TabController _controller;

  @override
  void initState() {
    _controller =
        new TabController(length: tabs.length, vsync: this, initialIndex: 1);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, value) {
        return [
          SliverAppBar(
            floating: true,
            pinned: true,
            title: const Text("WhatsApp"),
            backgroundColor: const Color(0xff128C7E),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
              IconButton(
                icon: const Icon(Icons.more_vert_sharp),
                onPressed: () {},
              )
            ],
            bottom: TabBar(
              tabs: tabs,
              controller: _controller,
              indicatorColor: Colors.white,
            ),
          )
        ];
      },
      body:
          Scaffold(body: TabBarView(controller: _controller, children: _views)),
    );
  }
}
