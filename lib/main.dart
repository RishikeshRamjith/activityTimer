import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(TimerApp());
}

class TimerApp extends StatelessWidget {
  TimerApp();

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Activity Timer',
      theme: ThemeData(
          primaryColor: Colors.blue,
          primarySwatch: Colors.blue,
          accentColor: Colors.blue,
          brightness: Brightness.light),
      home: Home(),
    );
  }
}
