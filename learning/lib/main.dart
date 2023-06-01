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
        padding: const EdgeInsets.all(80.0),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [Image.asset('assets/images/firstimage.jpg'),
            SizedBox(
            height: 200,),
            CupertinoButton.filled(child: Text("continue with google"), onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
            })
          ],
        ),
      ),
    );
  }
}