import 'package:flutter/material.dart';
import 'package:flutter_application_1/man_hinh_3.dart';
import 'package:flutter_application_1/man_hinh_4.dart';
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
    //bat dau tu MaterialApp > scafforld (bat duoc)
    //Trong scafforld có nhiều thuộc tính
    //App bar là cái đầu nó luôn hiện lên thế
    //Giowf cho app bar ra giữa màn hình
    return MaterialApp(
      home: TinhToanScreen(),
    );
  }
}
