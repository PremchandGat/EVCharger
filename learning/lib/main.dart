import 'package:flutter/material.dart';
import 'package:learning/langugage/network_images.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

var image = const Image(
  image: NetworkImage(MyNetowrkImageUrl.owl),
);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(padding: EdgeInsets.all(8), child: Icon(Icons.camera)),
          Padding(padding: EdgeInsets.all(8), child: Icon(Icons.search)),
          Padding(padding: EdgeInsets.all(8), child: Icon(Icons.menu)),
        ],
        title: Text("WhatsApp"),
        bottom: PreferredSize(
            child: DefaultTabController(
              length: 4,
              initialIndex: 1,
              child: TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.group),
                ),
                Tab(
                  text: "Chats",
                ),
                Tab(
                  text: "Status",
                ),
                Tab(
                  text: "Calls",
                )
              ]),
            ),
            preferredSize: Size(double.infinity, 50)),
      ),
      body: ListView(
        children: [
          for (int i = 0; i < 1000; i++)
            ListTile(
              leading: Container(
                width: 80,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(MyNetowrkImageUrl.owl),
                    ),
                    color: Colors.red,
                    shape: BoxShape.circle),
              ),
              title: Text("Arbaz $i"),
              subtitle: Text("Hello"),
              trailing: Text("4:00 PM"),
            )
        ],
      ),
    );
  }
}
