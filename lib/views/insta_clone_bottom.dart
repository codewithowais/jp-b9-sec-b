import 'package:flutter/material.dart';
import 'package:secbjp9/views/screen1.dart';
import 'package:secbjp9/views/screen2.dart';
import 'package:secbjp9/views/screen3.dart';
import 'package:secbjp9/views/screen4.dart';

class InstaCloneBottom extends StatefulWidget {
  const InstaCloneBottom({super.key});

  @override
  State<InstaCloneBottom> createState() => _InstaCloneBottomState();
}

class _InstaCloneBottomState extends State<InstaCloneBottom> {
  int selectedIndex = 0;
  List screens = [Screen1(), Screen2(), Screen3(), Screen4()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) {
          selectedIndex = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: selectedIndex == 0 ? Colors.white : Colors.grey,
            ),
            label: "Home",
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              color: selectedIndex == 1 ? Colors.white : Colors.grey,
            ),
            label: "Message",
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_collection_sharp,
              color: selectedIndex == 2 ? Colors.white : Colors.grey,
            ),
            label: "Library",
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: selectedIndex == 3 ? Colors.white : Colors.grey,
            ),
            label: "Profile",
            backgroundColor: Colors.pink,
          ),
        ],
      ),
    );
  }
}
