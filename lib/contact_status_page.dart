import 'package:flutter/material.dart';

class ContactStatusPage extends StatelessWidget {
  final String contactName;

  // Ensure contactName is a required parameter in the constructor
  const ContactStatusPage({Key? key, required this.contactName})
      : super(key: key);

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
