import 'package:bildergalerie/modules/aboutMe/about_me.dart';
import 'package:bildergalerie/modules/gallery/gallery.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int currentPageIndex = 0;
  final List<Widget> destinations = [
    NavigationDestination(icon: Icon(Icons.collections), label: "Gallery"),
    NavigationDestination(icon: Icon(Icons.person), label: "About Me"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Bilder Gallerie")),
        body: <Widget>[Gallery(), AboutMe()][currentPageIndex],
        bottomNavigationBar: NavigationBar(
          selectedIndex: currentPageIndex,
          destinations: destinations,
          backgroundColor: Colors.teal,
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
        ),
      ),
    );
  }
}
