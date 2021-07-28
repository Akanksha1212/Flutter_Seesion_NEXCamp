import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  String str = 'hello world';
  int number = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: t1,
            ),
            TextField(
              controller: t2,
            ),
            FlatButton(
              child: Text('Show text'),
              onPressed: () {
                setState(() {
                  number = number + 10;
                  print(number);
                });
              },
            ),
            Text('$number'),
          ],
        ),
      ),
    );
  }
}
