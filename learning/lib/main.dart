import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning/UI/home.dart';
import 'package:learning/langugage/mytext.dart';
import 'package:learning/langugage/network_images.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      
        appBarTheme: AppBarTheme(
          color: Colors.green,
        ),
        primaryColor: Colors.red),
    home: MainScreen(),
  ));
}


class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
       new Container(child: new Image.network(
            'https://images.pexels.com/photos/1525043/pexels-photo-1525043.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',) 
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
            height: 200,),
            CupertinoButton.filled(child: Text("log in"), onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
            })
          ],
        ),
      ),
    );
  }
}