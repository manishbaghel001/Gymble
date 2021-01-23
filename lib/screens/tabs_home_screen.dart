import 'package:flutter/material.dart';
import 'package:gymble/screens/main_page_screen.dart';
import 'package:gymble/screens/schedule.dart';
import 'package:gymble/screens/timeline-screen.dart';

class TabsHomeScreen extends StatefulWidget {
  @override
  TabsHomeScreenState createState() => TabsHomeScreenState();
}

class TabsHomeScreenState extends State<TabsHomeScreen> {
  final List<Map<String,Object>> _pages = [
   {'page': MainPageScreen(),
    
   },
   {'page':  ScheduleScreen(),},
    {'page': TimelineScreen(),},
  ];
  int _selectPagesIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectPagesIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: _pages[_selectPagesIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Colors.black,
        selectedItemColor: Color(0xFFFFBD73),
        currentIndex: _selectPagesIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.alarm), label: 'Schedule'),
          BottomNavigationBarItem(
              icon: Icon(Icons.timelapse), label: 'Timeline'),
        ],
      ),
    );
  }
}
