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
        body: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: image,
            ),
            SizedBox(
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Arbaz"), Text("Hello Sir,")],
              ),
            ),
            Text("12:00 PM")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: image,
            ),
            SizedBox(
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Arbaz"), Text("Hello Sir,")],
              ),
            ),
            Text("12:00 PM")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: image,
            ),
            SizedBox(
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Arbaz"), Text("Hello Sir,")],
              ),
            ),
            Text("12:00 PM")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: image,
            ),
            SizedBox(
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Arbaz"), Text("Hello Sir,")],
              ),
            ),
            Text("12:00 PM")
          ],
        )
      ],
    ));
  }
}
