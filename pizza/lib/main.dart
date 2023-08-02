import 'package:flutter/material.dart';
import 'package:pizza/stater_page.dart'; // Unused import: 'package:pizza/stater_page.dart'

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StaterPage(), // Is the class name "StaterPage" correct here? Should it be "StarterPage" instead?
    );
  }
}
