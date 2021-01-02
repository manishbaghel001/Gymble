import 'package:flutter/material.dart';
import 'package:gymble/models/constants.dart';
import 'package:gymble/screens/main_page_screen.dart';
import 'package:gymble/screens/schedule.dart';
import 'package:gymble/screens/timeline-screen.dart';
//void main() => runApp(TabsHomeScreen());
class TabsHomeScreen extends StatefulWidget {
  @override
  TabsHomeScreenState createState() => TabsHomeScreenState();
}

class TabsHomeScreenState extends State<TabsHomeScreen> {
  final List<Widget> _pages = [
    MainPageScreen(),
    ScheduleScreen(),
    TimelineScreen(),
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
      body: _pages[_selectPagesIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Colors.black,
        //unselectedItemColor: Colors.white,
        selectedItemColor: kPrimaryColor,
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
