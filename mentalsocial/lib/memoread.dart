import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DailyLogPage(),
    );
  }
}

class DailyLogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous page
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Date: MM/DD/YYYY',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Divider(),
            SizedBox(height: 8.0),
            Text(
              'Mood:',
              style: TextStyle(fontSize: 18),
            ),
            Divider(),
            SizedBox(height: 8.0),
            Row(
              children: [
                Text(
                  'Medication:',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  ' (optional)',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ],
            ),
            Divider(),
            SizedBox(height: 8.0),
            Expanded(
              child: TextField(
                maxLines: null,
                expands: true,
                decoration: InputDecoration(
                  hintText: 'What happened? Has it been a nice day for you?',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
