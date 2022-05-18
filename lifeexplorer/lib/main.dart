import 'package:flutter/material.dart';
import 'package:lifeexplorer/views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Life Explorer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.green,
          primaryColor: Colors.blue,
          textTheme: const TextTheme(
            bodyText2: TextStyle(color: Colors.white),
          )),
      home: HomePage(),
    );
  }
}
