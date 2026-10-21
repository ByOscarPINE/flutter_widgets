import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Main App'),
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Column(
          children: [
            ListTile(
              leading: Icon(Icons.bubble_chart),
              title: Text('Buttons'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context, '/buttons');
              },
            ),
            ListTile(
              leading: Icon(Icons.view_column),
              title: Text('Columns & Rows'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context, '/columns_rows');
              },
            ),
            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('Cards'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context, '/cards');
              },
            ),
          ],
        )
      );
  }
}