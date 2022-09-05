import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  List<String> userNames = [
    'John',
    'William',
    'Robert',
    'Smith',
    'Catherian',
    'Rastova',
    'Lenin',
    'Vlad',
    'Albert',
    'Leonel',
    'Piter',
    'Jack William'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Color(0xff128C7E),
      ),
      body: ListView.builder(
        itemCount: 12,
        itemBuilder: (context, index) => Container(
          child: InkWell(
            onTap: () {},
            child: ListTile(
              title: Text(userNames[index]),
              subtitle: Row(
                children: const [
                  Icon(
                    Icons.done_all,
                    size: 15,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(child: Text("Hey What's up?")),
                ],
              ),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/avatars/man$index.png'),
                radius: 30,
                backgroundColor: Colors.white,
              ),
              trailing: Text('9:25 PM'),
              isThreeLine: true,
            ),
          ),
        ),
      ),
    );
  }
}
