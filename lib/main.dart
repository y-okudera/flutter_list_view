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
  var listItem = ["one", "two", "three"];

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
          return Card(
            child: new InkWell(
              onTap: () {
                print('tapped index $index');
              },
              child: Padding(
                child: Text(
                  listItem[index],
                  style: TextStyle(fontSize: 17.0),
                ),
                padding: EdgeInsets.all(16.0),
              ),
            ),
          );
        },
        itemCount: listItem.length,
      ),
    );
  }
}
