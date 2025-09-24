import 'package:bildergalerie/modules/aboutMe/about_me.dart';
import 'package:bildergalerie/modules/gallery/gallery.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  List<Widget> destinations = [Gallery(), AboutMe()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Bilder Gallerie")),
        body: Text(),
        bottomNavigationBar: NavigationBar(destinations: destinations),
      ),
    );
  }
}
