import 'package:first_apprentice/screen/card1.dart';
import 'package:first_apprentice/screen/card2.dart';
import 'package:first_apprentice/screen/card3.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List<Widget> listOfWidget = [
    CardOne(),
    CardTwo(),
    CardThree(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[900],
      appBar: AppBar(
        title: Text('Fooderlich'),
      ),
      body: listOfWidget[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.brown[500],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (value) {
          print(value);
          setState(() {
            selectedIndex = value;
          });
        },
      ),
    );
  }
}
