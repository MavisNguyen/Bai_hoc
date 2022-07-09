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

    int randomResult = 3 + random.nextInt(3);
    return Center(
      child: Container(
        width: 400,
        color: const Color(0xff37384d),
        child: Column(
          children: [
            Row(
              //Trong cai row nay co khoang cach o giua
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  height: 180,
                  alignment: Alignment.center,
                  child: const Text(
                    'SCORE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: 180,
                  alignment: Alignment.center,
                  child: Text(
                    'BEST: $b',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topCenter,
              width: 400,
              height: 100,
              child: Text(
                '$count',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 400,
              height: 150,
              child: Text(
                '$number1 + $number2 = $randomResult',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
//Button kiem tra dung

                Container(
                  width: 200,
                  height: 130,
                  alignment: Alignment.center,
                  child: MaterialButton(
                    onPressed: () {
                      ///Binh thuong mac dinh la nhan se khong the cap nhat man hinh=> dung setState la dc
                      if (number1 + number2 == randomResult) {
                        print('ket qua la dung random');
                        //Neu dung thi cho cau hoi khac
                        setState(() {
                          random;
                          count++;
                          b = b + 10;
                        });
                      } else {
                        //Neu sai thi cho qua man hinh qua ket qua
                        print('ket qua la sai random');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChiTietTinhToanScreen(
                                    layKeyQua: b,
                                  )),
                        );
                      }
                      print(count);
                    },
                    child: CircleAvatar(
                      backgroundColor: const Color(0xff37384d),
                      radius: 40,
                      child: Image.asset(
                        'assets/images/cr.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  height: 130,
                  alignment: Alignment.center,
                  child: MaterialButton(
                    onPressed: () {
                      if (number1 + number2 != randomResult) {
                        print('Dung roi');
                        //Neu dung thi cho cau hoi khac
                        setState(() {
                          random;
                          count++;
                          b = b + 10;
                        });
                      } else {
                        //Neu sai thi cho qua man hinh qua ket qua
                        print('Sai roi');

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChiTietTinhToanScreen(
                                    layKeyQua: b,
                                  )),
                        );
                      }
                      print(count);
                    },
                    child: CircleAvatar(
                      backgroundColor: const Color(0xff37384d),
                      radius: 40,
                      child: Image.asset(
                        'assets/images/incr.png',
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
