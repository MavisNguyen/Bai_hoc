import 'package:flutter/material.dart';
import 'package:flutter_application_1/thuc_hanh_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int bienDem = 0;
  @override
  Widget build(BuildContext context) {
    //bat dau tu MaterialApp > scafforld (bat duoc)
    //Trong scafforld có nhiều thuộc tính
    //App bar là cái đầu nó luôn hiện lên thế
    //Giowf cho app bar ra giữa màn hình
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Doraemon'),
          centerTitle: true,
        ),
        //Container là hop chua het phan duoi

        body: ThucHanhScreen(),
      ),
    );
  }
}
