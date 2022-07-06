import 'dart:math';

import 'package:flutter/material.dart';

class ThucHanhScreen extends StatefulWidget {
  const ThucHanhScreen({Key? key}) : super(key: key);

  @override
  State<ThucHanhScreen> createState() => _ThucHanhScreenState();
}

class _ThucHanhScreenState extends State<ThucHanhScreen> {
  //Phai bo bien tren nay moi chay nha :v

  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              height: 100,
              child:  Text(
                textAlign: TextAlign.center,
                'The loudest sound pruduced by any animal is 188 decidels. That animal is the African elephant.',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Container(
              height: 50,
            ),
            Container(
              color: const Color.fromARGB(255, 12, 167, 17),
              width: 300,
              height: 40,
              child: Text(
                textAlign: TextAlign.center,
                'True',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Container(
              height: 20,
            ),
            Container(
              color: const Color.fromARGB(255, 204, 34, 22),
              width: 300,
              height: 40,
              child: Text(
                textAlign: TextAlign.center,
                'False',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
