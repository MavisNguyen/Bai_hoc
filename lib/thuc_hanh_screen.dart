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
            const SizedBox(
              width: 300,
              height: 100,
              child: Text(
                textAlign: TextAlign.center,
                'The loudest sound pruduced by any animal is 188 decidels. That animal is the African elephant.',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Container(
              height: 50,
            ),
            nhunay(
              ab: 'TRUE',
              mau: const Color.fromARGB(255, 11, 110, 14),
            ),
            Container(
              height: 20,
            ),
            nhunay(
              ab: 'FALSE',
              mau: const Color.fromARGB(255, 201, 26, 14),
            ),
          ],
        ),
      ),
    );
  }
}

class nhunay extends StatelessWidget {
  const nhunay({required this.ab, required this.mau});
  final String ab;
  final Color mau;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mau,
      width: 300,
      height: 40,
      child: Text(
        textAlign: TextAlign.center,
        ab,
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
