import 'package:flutter/material.dart';
import 'package:c2c/stats_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StatsPage(),
    );
  }
}
