import 'package:flutter/material.dart';
import 'package:flutter_session/listExample.dart';
import 'package:flutter_session/myHome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListExample(),
    );
  }
}
