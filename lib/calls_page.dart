import 'package:flutter/material.dart';
import 'contact_call_page.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(10, (index) {
            String contactName = 'Contact $index';
            return ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.teal,
              ),
              title: Text(contactName),
              subtitle: const Row(
                children: [
                  Icon(
                    Icons.call_made,
                    color: Colors.green,
                    size: 16,
                  ),
                  SizedBox(width: 5),
                  Text('Yesterday, 8:30 PM'),
                ],
              ),
              trailing: const Icon(
                Icons.call,
                color: Colors.teal,
              ),
              onTap: () {
                // Navigate to the detailed call log screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ContactCallPage(contactName: contactName),
                  ),
                );
              },
            );
          }),
        ),
      ),
    );
  }
}
