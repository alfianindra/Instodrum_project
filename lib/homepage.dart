import 'package:instodrum/pages/home.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) :super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  void _navigateBottomNavBar (int Index) {
    setState(() {
      _selectedIndex = Index;
    });
  }

//buat halaman masing-masing
final List<Widget> _children = [
UserHome(),

];

  @override
  Widget build(BuildContext context) {
    return Scaffold( //kerangka 
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call),label: 'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
          ],    
      ),
    ); 
  }
}