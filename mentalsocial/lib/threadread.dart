import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DetailPage(),
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Handle back navigation
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey[300], // Light grey for the content box
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.alternate_email, size: 32.0), // "@" symbol
                Icon(Icons.favorite_border, size: 32.0), // Heart icon
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white, // Now it's just an empty container
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Space',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_note_outlined),
            label: 'Memo',
          ),
        ],
        onTap: (index) {
          // Handle navigation between pages based on the index
          if (index == 0) {
            // Navigate to Chat page
          } else if (index == 1) {
            // Navigate to Space page
          } else if (index == 2) {
            // Navigate to Memo page
          }
        },
      ),
    );
  }
}
