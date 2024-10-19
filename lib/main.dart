import 'package:flutter/material.dart';
import 'chats_page.dart';
import 'status_page.dart';
import 'calls_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp UI',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const WhatsAppHome(),
    );
  }
}

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> {
  int _currentIndex = 0;

  // List of pages
  final List<Widget> _pages = [
    ChatsPage(),
    const StatusPage(),
    const CallsPage(),
  ];

  // Switch between tabs
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WhatsApp'),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.transparent, // Make the background transparent
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/calls/1.jpeg"),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'UMAIR TARIQ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // Add Divider below AppBar
          Divider(height: 1, thickness: 1, color: Colors.grey[300]),
          Expanded(
            child: _pages[_currentIndex], // Display the selected page
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
        ],
      ),
    );
  }
}
