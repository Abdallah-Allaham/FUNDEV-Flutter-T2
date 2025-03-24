import 'package:flutter/material.dart';
import 'package:whatsapp_ui/calls_screen.dart';
import 'package:whatsapp_ui/chats_screen.dart';
import 'package:whatsapp_ui/communities_screen.dart';
import 'package:whatsapp_ui/updates_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentScreenIndex = 0;
  List<String> titles = ["WhatsApp", "Updates", "Communities", "Calls"];
  List<Widget> iconsScreen = [
    Row(
      spacing: 20,
      children: [
        Icon(Icons.camera_alt_outlined, color: Colors.white),
        Icon(Icons.more_vert_rounded, color: Colors.white),
      ],
    ),
    Row(
      spacing: 20,
      children: [
        Icon(Icons.search, color: Colors.white),
        Icon(Icons.more_vert_rounded, color: Colors.white),
      ],
    ),
    Row(children: [Icon(Icons.more_vert_rounded, color: Colors.white)]),
    Row(
      spacing: 20,
      children: [
        Icon(Icons.search, color: Colors.white),
        Icon(Icons.more_vert_rounded, color: Colors.white),
      ],
    ),
  ];
  List<Widget> screens = [
    ChatsScreen(),
    UpdatesScreen(),
    CommunitiesScreen(),
    CallsScreen(),
  ];

  List<Icon> iconsForFloatingActionButton = [
    Icon(Icons.mark_unread_chat_alt_outlined, color: Colors.black),
    Icon(Icons.camera_alt, color: Colors.black),
    Icon(Icons.people_outline, color: Colors.black),
    Icon(Icons.call, color: Colors.black),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 55,
        width: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.green,
        ),
        child: iconsForFloatingActionButton[currentScreenIndex],
      ),
      backgroundColor: Color(0xff060906),
      appBar: AppBar(
        title: Text(
          titles[currentScreenIndex],
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xff060906),
        actions: [iconsScreen[currentScreenIndex]],
      ),
      body: screens[currentScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff060906),
        currentIndex: currentScreenIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            currentScreenIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: "Updates"),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            label: "Communities",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
        ],
      ),
    );
  }
}
