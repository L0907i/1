import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChatPage(),
    );
  }
}

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Chat',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 6, // Number of chat bubbles or rows
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    color: Colors.grey[300],
                    height: 80, // Adjust this value for the height of each row
                    child: ListTile(
                      leading: Icon(Icons.person), // User icon or avatar
                      title:
                          Text('Chat message $index'), // Example chat message
                      subtitle: Text(
                          'Subtitle for message $index'), // Additional text
                      onTap: () {
                        // Handle tap action here
                      },
                    ),
                  ),
                );
              },
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
          // Handle bottom navigation bar tap
        },
        backgroundColor: Colors
            .grey[200], // Matches the rounded grey background in your image
      ),
    );
  }
}
