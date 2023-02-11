import 'package:flutter/material.dart';
import 'package:fruitproject/exporepage.dart';
import 'package:fruitproject/homepage.dart';
import 'package:fruitproject/productdetail/cartview.dart';
import 'package:fruitproject/productdetail/favoritepage.dart';


class Box extends StatefulWidget {
  const Box({super.key});

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
   
    HomeView(),
    ExporeView(),
    FavoritePage(),
   CartView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.house_outlined,
                color: Colors.green,
              ),
              label: 'Home',
              backgroundColor: Color.fromARGB(255, 255, 255, 255)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.travel_explore_rounded,
                color: Colors.green,
              ),
              label: 'Expore',
              backgroundColor: Color.fromARGB(255, 255, 255, 255)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.green,
              ),
              label: 'favourite',
              backgroundColor: Color.fromARGB(255, 255, 255, 255)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.green,
              ),
              label: 'CartView',
              backgroundColor: Color.fromARGB(255, 255, 255, 255)),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
