// import 'package:flutter/material.dart';

// class ContactStatusPage extends StatelessWidget {
//   final String contactName;

//   // Constructor to accept the contact name
//   ContactStatusPage({required this.contactName});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('$contactName\'s Status'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const CircleAvatar(
//               radius: 50,
//               backgroundColor: Colors.teal,
//             ),
//             const SizedBox(height: 20),
//             Text(
//               '$contactName\'s status update:',
//               style: const TextStyle(fontSize: 20),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class ChatEmpty extends StatelessWidget {
//   const ChatEmpty({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Status'), // Replace with dynamic name if needed
//       ),
//       body: const Center(
//         child: Text('Empty'),
//       ),
//     );
//   }
// }





import 'package:flutter/material.dart';

class ContactStatusPage extends StatelessWidget {
  final String contactName;

  // Ensure contactName is a required parameter in the constructor
  const ContactStatusPage({Key? key, required this.contactName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Status of $contactName'),
      ),
      body: Center(
        child: Text('Here is the status for $contactName.'),
      ),
    );
  }
}

