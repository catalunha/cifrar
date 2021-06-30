import 'package:flutter/material.dart';
import 'package:example/criptografia/decriptar.dart';
import 'package:example/criptografia/encriptar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final tabs = [
      Encriptar(),
      Decriptar(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Cirar Msg - Exemplo'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white.withOpacity(0.2),
        // selectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (index) => setState(() {
          print(index);
          selectedIndex = index;
        }),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.lock_outline), label: 'Encriptar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.lock_open), label: 'Decriptar')
        ],
      ),
      body: tabs[selectedIndex],
    );
  }
}
