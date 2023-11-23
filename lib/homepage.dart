import 'package:flutter/material.dart';
import 'package:instodrum/pages/account.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // navigate around the bottom nav bar
   int _selectedIndex = 0;
   void _navigateBottomNavBar(int index){
    setState(() {
      _selectedIndex = index;
    });
   }

   final List<Widget> _children = [
    Center(child: Text('Home')),
    Center(child: Text('Search')),
    Center(child: Text('Reels')),
    UserAccount(),
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'Reels'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
