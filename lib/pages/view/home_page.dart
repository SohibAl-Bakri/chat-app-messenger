import 'package:flutter/material.dart';
import 'package:messenger/pages/model/user_info.dart';
import 'package:messenger/pages/view/calls.dart';
import 'package:messenger/pages/view/chats.dart';
import 'package:messenger/pages/view/peaple.dart';
import 'package:messenger/pages/view/stories.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget?> _pages = [
     ChatsPage(),
     CallsPage(),
     PeaplePage(),
     StoriesPage(),
  ];

  final List<String> _title = [
    'Chats',
    'Calls',
    'Peaple',
    'Stories',
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(_title[_selectedIndex]),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.grey[600],
            child: const Icon(
              Icons.list_rounded,
              color: Colors.white,
            ),
          ),
        ),
        actions: <Widget>[
          //  CircleAvatar(
          //       backgroundColor: Colors.grey[600],
          //       child: const Icon(
          //         Icons.camera_alt_rounded,
          //         color: Colors.white,
          //       ),
          //     ),
          //     const SizedBox(width: 5),
          //     CircleAvatar(
          //       backgroundColor: Colors.grey[600],
          //       child: const Icon(
          //         Icons.edit_rounded,
          //         color: Colors.white,
          //       ),
          //     ),
          //     const SizedBox(width: 5),
          if (_selectedIndex == 0) ...[
            CircleAvatar(
              backgroundColor: Colors.grey[600],
              child: const Icon(
                Icons.camera_alt_rounded,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 5),
            CircleAvatar(
              backgroundColor: Colors.grey[600],
              child: const Icon(
                Icons.edit_rounded,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 5),
          ] else if (_selectedIndex == 1) ...[
            CircleAvatar(
              backgroundColor: Colors.grey[600],
              child: const Icon(
                Icons.phone,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 5),
            CircleAvatar(
              backgroundColor: Colors.grey[600],
              child: const Icon(
                Icons.videocam_rounded,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 5),
          ] else if (_selectedIndex == 2) ...[
            CircleAvatar(
              backgroundColor: Colors.grey[600],
              child: const Icon(
                Icons.quick_contacts_dialer_outlined,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 5),
          ] else
            ...[]
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.voice_chat_outlined),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_sharp),
            label: 'Peaple',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.amp_stories_outlined),
            label: 'Stories',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      body: _pages[_selectedIndex],
    );
  }
}
