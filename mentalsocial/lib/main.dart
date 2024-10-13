import 'package:flutter/material.dart';
import 'chat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Post Something App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.wb_sunny_outlined),
            onPressed: () {
              // Logic for light/dark mode toggle
            },
            color: Colors.black,
          ),
        ],
      ),
      body: Center(
        child: Text(
          "Let's Post Something!!!",
          style: TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action for creating a post
        },
        child: Icon(Icons.edit_outlined),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.chat_bubble_outline),
                onPressed: () {
                  // Navigate to chat
                },
              ),
              IconButton(
                icon: Icon(Icons.explore_outlined),
                onPressed: () {
                  // Navigate to space
                },
              ),
              IconButton(
                icon: Icon(Icons.edit_note_outlined),
                onPressed: () {
                  // Navigate to memo
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
