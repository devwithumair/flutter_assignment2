import 'package:flutter/material.dart';

class ChatEmpty extends StatelessWidget {
  const ChatEmpty({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Chat with ...'), // Replace with dynamic name if needed
      ),
      body: const Center(
        child: Text('No messages yet!'),
      ),
    );
  }
}
