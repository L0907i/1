import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.wb_sunny_outlined, color: Colors.black), // Sun icon
            onPressed: () {
              // Add functionality here for theme change or settings
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5, // Adjust based on dynamic content
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    color: Colors.grey[300], // Light grey for the rows
                    child: ListTile(
                      leading: Icon(Icons.favorite_border), // Heart icon
                      trailing: Icon(Icons.edit), // Pencil icon
                      onTap: () {
                        // Handle item tap
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
      ),
    );
  }
}
