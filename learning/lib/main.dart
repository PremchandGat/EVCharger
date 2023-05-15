import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learning/langugage/mytext.dart';
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
  /// [myFieldController] Controller for my TextFiled in this page
  TextEditingController myFieldController = TextEditingController();

  /// [doIshowAppBar] Decides whether AppBar we have to show or not
  bool doIshowAppBar = false;

  /// [valueOfMyTextField] This stores value of my TextField in this page
  String valueOfMyTextField = "";

  /// [_showOrHideAppBar] is used to show or hide app bar
  _showOrHideAppBar() {
    doIshowAppBar = !doIshowAppBar;
    setState(() {});
  }

  /// [_upadteControllerOfTextField] this update text inside my TextField
  _upadteControllerOfTextField() {
    myFieldController.text = "Hello world";
  }

  /// [_updateUiForTextField] This function update ui when Text Filed changes
  _updateUiForTextField(String val) => setState(() {
        valueOfMyTextField = val;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: doIshowAppBar ? AppBar() : null,
      body: SafeArea(
          child: Column(
        children: [
          TextField(
            controller: myFieldController,
            decoration: const InputDecoration(hintText: MyText.enterYourName),
            onChanged: _updateUiForTextField,
          ),
          Text("Valud of my Text filed: ${myFieldController.text}"),
          FilledButton(
              onPressed: () {
                myFieldController.clear();
              },
              child: const Text(MyText.clearFiled)),
          FilledButton(
              onPressed: _upadteControllerOfTextField,
              child: const Text("Update Value"))
        ],
      )),
      floatingActionButton: FloatingActionButton(onPressed: _showOrHideAppBar),
    );
  }
}
