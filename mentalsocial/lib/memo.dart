import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    PlaceholderWidget('Chat'),
    PlaceholderWidget('Space'),
    PlaceholderWidget('Memo'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: List.generate(6, (index) {
                    return Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 2.0),
                        color: Colors.grey.shade300,
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
          Positioned(
            right: 16.0,
            bottom: 90.0, // Slightly above the bottom navigation bar
            child: FloatingActionButton(
              onPressed: () {
                // Add action for the floating action button here
              },
              child: Icon(Icons.note_add),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: 'Space',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_note),
            label: 'Memo',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

class PlaceholderWidget extends StatelessWidget {
  final String text;

  PlaceholderWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}
