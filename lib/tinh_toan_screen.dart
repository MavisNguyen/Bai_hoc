import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/chi_tiet_tinh_toan.dart';

class TinhToanScreen extends StatefulWidget {
  const TinhToanScreen({Key? key}) : super(key: key);

  @override
  State<TinhToanScreen> createState() => _ThucHanhScreenState();
}

class _ThucHanhScreenState extends State<TinhToanScreen> {
  //Phai bo bien tren nay moi chay nha :v
//*Mo ta: Tinh toan 2 so random va kiem tra đung hay sai => sai la ra man hinh ket qua
//Cach thuc hien: so1 va so(random 10-50  ) roi tinh toan cong=> dung la doi cau hoi (random tiep)
  Random random = Random();
  int count = 0;
  int b = 0;

  @override
  Widget build(BuildContext context) {
    int number1 = 1 + random.nextInt(3);
    int number2 = 1 + random.nextInt(3);
    //hmm neu ma random so xa z ma random ca ket qua thi kho :v
    //Kiem tra so cau hoi dung
    ///Moi man hinh phai co scafford

    int randomResult = 3 + random.nextInt(3);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: const Color.fromARGB(31, 65, 62, 62),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Row(
            children: [
              Flexible(child: ContainData(colour: Colors.red, text: '1',)),
              Flexible(child: ContainData(colour: Colors.blue, text: '2',)),
              
            ],
          ),
          Row(
            children: [
           Flexible(child: ContainData(colour: Colors.green, text: '3',)),
           Flexible(child: ContainData(colour: Colors.yellow, text: '4',)),
              
            ],
          ),
          Image.asset(
            'assets/images/mon.png',
            width: 300,
            height: 300,
          ),
        ]),
      ),
    );
  }
}

class ContainData extends StatelessWidget {
  ContainData({required this.text, required this.colour});
  final String text;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
    
      color: colour,
      alignment: Alignment.center,
      child: MaterialButton(
        onPressed: () {},
          height: 80,
        child:  Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
