import 'package:flutter/material.dart';

import 'HomePage.dart';
import 'screens/profile_screen.dart';

class Home extends StatefulWidget {
  static const routeName = '/HomeScreen';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  static const List<Widget> _pages = <Widget>[
    HomePage(),
    Icon(
      Icons.favorite,
      size: 150,
    ),Icon(
      Icons.shopping_cart,
      size: 150,
    ),
    Icon(
      Icons.payment,
      size: 150,
    ),
   ProfileScreen(),
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _pages.elementAt(_selectedIndex)
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 8,
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.brown,
        selectedItemColor: Colors.brown.shade900,
        selectedIconTheme: IconThemeData(
            size: 30
        ),
        unselectedItemColor: Colors.pink,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.manage_accounts_rounded), label: ''),
        ],
      ),
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

