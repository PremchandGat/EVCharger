import 'dart:async';

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
  int a = 10;

  bool doIshowAppBar = false;

  /// [_addItem] is used to increase the value of a
  _addItem() {
    a = a + 1;
    debugPrint("Hii , i am inside function");
    setState(() {});
  }

  /// [_showOrHideAppBar] is used to show or hide app bar
  _showOrHideAppBar() {
    doIshowAppBar = !doIshowAppBar;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("Building whole UI again");
    return Scaffold(
      appBar: doIshowAppBar ? AppBar() : null,
      body: Center(child: Text("Hello world $a")),
      floatingActionButton: FloatingActionButton(onPressed: _showOrHideAppBar),
    );
  }
}
