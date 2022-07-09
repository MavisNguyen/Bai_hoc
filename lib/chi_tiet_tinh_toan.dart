import 'dart:math';

import 'package:flutter/material.dart';

class ChiTietTinhToanScreen extends StatefulWidget {
  ChiTietTinhToanScreen({required this.layKeyQua});
  final int layKeyQua;

  @override
  State<ChiTietTinhToanScreen> createState() => _ChiTietTinhToanScreenState();
}

class _ChiTietTinhToanScreenState extends State<ChiTietTinhToanScreen> {
  //Phai bo bien tren nay moi chay nha :v

  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          color: const Color(0xff37384d),
          child: Column(
            children: [
              Container(
                width: 400,
                alignment: Alignment.bottomCenter,
                height: 100,
                child: const Text(
                  'GAME',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: 400,
                alignment: Alignment.center,
                height: 50,
                child: const Text(
                  'OVER',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: 400,
                alignment: Alignment.bottomCenter,
                height: 100,
                child: const Text(
                  'YOUR SCORE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: 400,
                alignment: Alignment.bottomCenter,
                height: 40,
                child:  Text(
                widget.layKeyQua.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 100,
              ),
              Container(
                width: 300,
                height: 50,
                color: Colors.red,
                alignment: Alignment.center,
                child: MaterialButton(
                  onPressed: () {
                    ///Quay ve man hinh truoc do
                    Navigator.pop(context);
                  },
                  minWidth: 300,
                  height: 50,
                  child: const Text(
                    'TRY AGAIN?',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                height: 20,
              ),
              Container(
                width: 300,
                height: 50,
                color: Colors.green,
                alignment: Alignment.center,
                child: MaterialButton(
                  onPressed: () {
                    ///Quay ve man hinh truoc do
                    Navigator.pop(context);
                  },
                  minWidth: 300,
                  height: 50,
                  child: const Text(
                    'HOME',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
