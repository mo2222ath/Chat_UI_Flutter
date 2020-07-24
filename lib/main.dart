import 'package:chat_ui_mhr/screens/home_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat MHR',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
        accentColor: Colors.deepPurple[50],
      ),
      home: HomeApp(),
    );
  }
}
