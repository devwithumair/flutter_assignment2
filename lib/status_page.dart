import 'package:flutter/material.dart';
import 'contact_status_page.dart'; // Import the ContactStatusPage

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  // Sample data for statuses
  final List<Map<String, String>> statuses = const [
    {
      'name': 'Haider',
      'time': 'Today, 8:30 AM',
      'image': 'assets/status/1.jpeg',
    },
    {
      'name': 'Mashood',
      'time': 'Today, 9:00 AM',
      'image': 'assets/status/2.jpeg',
    },
    {
      'name': 'Huzaifa',
      'time': 'Today, 9:15 AM',
      'image': 'assets/status/3.jpeg',
    },
    {
      'name': 'Wahab',
      'time': 'Today, 10:00 AM',
      'image': 'assets/status/4.jpeg',
    },
    {
      'name': 'Haider',
      'time': 'Today, 8:30 AM',
      'image': 'assets/status/5.jpeg',
    },
    {
      'name': 'Mashood',
      'time': 'Today, 9:00 AM',
      'image': 'assets/status/6.jpeg',
    },
    {
      'name': 'Huzaifa',
      'time': 'Today, 9:15 AM',
      'image': 'assets/status/7.jpeg',
    },
    {
      'name': 'Wahab',
      'time': 'Today, 10:00 AM',
      'image': 'assets/status/8.jpeg',
    },
    {
      'name': 'Wahab',
      'time': 'Today, 10:00 AM',
      'image': 'assets/status/9.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // My Status Section
            const ListTile(
              leading: Stack(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.teal,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.teal,
                      child: Icon(Icons.add, size: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
              title: Text('My Status'),
              subtitle: Text('Tap to add status update'),
            ),
            const Divider(),
            // Recent Updates Section
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Recent updates'),
            ),
            // Status List
            Column(
              children: List.generate(statuses.length, (index) {
                String contactName = statuses[index]['name']!;
                String statusTime = statuses[index]['time']!;
                String statusImage = statuses[index]['image']!;

                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(statusImage), // Status image
                  ),
                  title: Text(contactName), // Contact name
                  subtitle: Text(statusTime), // Status time
                  onTap: () {
                    // Navigate to the detailed contact status screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContactStatusPage(
                            contactName: contactName), // Correct usage here
                      ),
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
