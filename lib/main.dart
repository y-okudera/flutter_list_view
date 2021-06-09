import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  List<Map<String, String>> items = [
    {'title': 'タイトル1', 'message': 'メッセージ1'},
    {'title': 'タイトル2', 'message': 'メッセージ2'},
    {'title': 'タイトル3', 'message': 'メッセージ3'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ホーム',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return CustomCard(items[index]['title'].toString(),
              items[index]['message'].toString());
        },
        itemCount: items.length,
      ),
    );
  }
}

class CustomCard extends StatefulWidget {
  final String title;
  final String message;
  CustomCard(this.title, this.message);

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: new InkWell(
        onTap: () {
          print('タップ');
        },
        child: Padding(
          child: Column(
            children: <Widget>[
              Text(
                widget.title,
                style: TextStyle(fontSize: 17.0, color: Colors.green),
              ),
              Text(
                widget.message,
                style: TextStyle(fontSize: 14.0),
              ),
            ],
          ),
          padding: EdgeInsets.all(16.0),
        ),
      ),
    );
  }
}
