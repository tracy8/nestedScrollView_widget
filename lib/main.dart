import 'package:flutter/material.dart';
import 'nested_scroll_example.dart'; // Import the screen widget

void main() => runApp(MyApp());

/// Root of the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nested ScrollView Demo',
      debugShowCheckedModeBanner: false,
      home: NestedScrollExample(), // Set the custom screen as home
    );
  }
}
