import 'package:flutter/material.dart';
import 'package:test/screens/contact.dart';
import 'package:test/styles/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App',
      home: const ContactsScreen(),
      theme: theme(),
    );
  }
}
