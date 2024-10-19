import 'package:flutter/material.dart';
import 'package:secondassignment/chat_empty.dart';

class ChatsPage extends StatelessWidget {
  ChatsPage({super.key});
  // Sample data for chats
  final List<Map<String, String>> chats = [
    {
      'name': 'Haider',
      'message': 'Hey, how are you?',
      'image': 'assets/chats/1.jpeg',
    },
    {
      'name': 'Mashood',
      'message': 'Are we meeting today?',
      'image': 'assets/chats/2.jpeg',
    },
    {
      'name': 'Huzaifa',
      'message': 'Let\'s catch up soon!',
      'image': 'assets/chats/3.jpeg',
    },
    {
      'name': 'Hashir',
      'message': 'I\'ll call you later.',
      'image': 'assets/chats/4.jpeg',
    },
    {
      'name': 'Nabeel',
      'message': 'Meeting rescheduled to 4pm.',
      'image': 'assets/chats/5.jpeg',
    },
    {
      'name': 'Wahab',
      'message': 'Meeting rescheduled to 4pm.',
      'image': 'assets/chats/6.jpeg',
    },
    {
      'name': 'Umer',
      'message': 'Meeting rescheduled to 4pm.',
      'image': 'assets/chats/7.jpeg',
    },
    {
      'name': 'Haider',
      'message': 'Hey, how are you?',
      'image': 'assets/chats/1.jpeg',
    },
    {
      'name': 'Mashood',
      'message': 'Are we meeting today?',
      'image': 'assets/chats/2.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chats.length, // Number of chat items
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage:
                  AssetImage(chats[index]['image']!), // Avatar image
            ),
            title: Text(
              chats[index]['name']!, // Chat name
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(chats[index]['message']!), // Chat subtitle (message)
            onTap: () {
              // Navigate to ChatEmpty screen when chat is tapped
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ChatEmpty()),
              );
            },
          );
        },
      ),
    );
  }
}
