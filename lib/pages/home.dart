import 'package:flutter/material.dart';
import 'package:routing/pages/about.dart';
import 'package:routing/pages/myhome.dart';
import 'package:routing/pages/profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget _currentWidget = const MyHome();

  var _currentIndex = 0;
  void _loadScreen() {
    switch (_currentIndex) {
      case 0:
        return setState(() {
          _currentWidget = const MyHome();
        });
      case 1:
        return setState(() {
          _currentWidget = const About();
        });
      case 2:
        return setState(() {
          _currentWidget = const Profile();
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),
      body: _currentWidget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => {
          setState(
            () {
              _currentIndex = index;
              _loadScreen();
            },
          ),
        },
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        selectedItemColor: const Color.fromARGB(255, 248, 248, 248),
        unselectedItemColor: Colors.pink,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.abc,
            ),
            label: 'Contact',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
