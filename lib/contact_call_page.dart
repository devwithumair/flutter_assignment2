import 'package:flutter/material.dart';

class ContactCallPage extends StatelessWidget {
  final String contactName;

  // Constructor to accept the contact name
  ContactCallPage({required this.contactName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Call with $contactName'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.teal,
            ),
            const SizedBox(height: 20),
            Text(
              'Call with $contactName',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            const Text(
              'Duration: 15 minutes',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(height: 10),
            const Text(
              'Date: October 16, 2024',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
