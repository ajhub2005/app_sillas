import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Messages View", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
    );
  }
}