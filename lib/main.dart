import 'package:flutter/material.dart';
import 'package:cafe/List/index.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cafe',
      theme: ThemeData(),
      home: const MainScreen(),
    );
  }
}
