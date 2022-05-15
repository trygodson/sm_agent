import 'package:flutter/material.dart';
import 'package:dweller/screens/chat/chat.dart';
import 'package:dweller/theme/color.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  int _selectedIndex = 0;
  List pages = [
    const ChatPage(),
    Container(
      child: const Center(
        child: Text('group chats'),
      ),
    )
  ];

  void onTapNav(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        selectedItemColor: primary,
        unselectedItemColor: dimGrey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: onTapNav,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
            ),
            // activeIcon: Icon(Icons.chat_bubble_outline, color: Colors.green),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.group,
              ),
              label: 'Call'),
        ],
      ),
    );
  }
}
