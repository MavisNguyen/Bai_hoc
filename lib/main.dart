import 'package:flutter/material.dart';
import 'package:flutter_application_1/tinh_toan_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: TinhToanScreen(),
    );
  }
}
