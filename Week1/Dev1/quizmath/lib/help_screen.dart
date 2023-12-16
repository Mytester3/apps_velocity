import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0x59564ADB),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Colors.red,
            height: 0.5,
          ),
        ),
        title: Text('Help'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Quiz Math',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Welcome to Quiz Game Math!',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'This game will challenge your math knowledge by answering questions.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'How to play:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '1. There are 3 level options for you to choose from: Basic, Medium, Challenging',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              '2. Please choose the answer that you think is correct.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              '3. Click the finish button at the bottom of the screen to know the answer!',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Get ready to participate and show off your math talent!',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
