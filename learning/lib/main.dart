import 'package:flutter/material.dart';
import 'package:learning/langugage/network_images.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.green,
        ),
        primaryColor: Colors.red),
    home: HomeScreen(),
  ));
}

var image = const Image(
  image: NetworkImage(MyNetowrkImageUrl.owl),
);

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;
  _increaseCount() {
    count = count + 1;
    setState(() {});
    print("Value of count is $count");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Total count of value is $count"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _increaseCount),
    );
  }
}
