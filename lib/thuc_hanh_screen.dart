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
    //Random mac dinh la 0-100
    //So bat dau la 0 ma minh can bat dau la 1
    //Gioi han la 6
    //Sua lai tu 1 den 6
    int random1 = random.nextInt(6) + 1;
    int random2 = random.nextInt(6) + 1;
    //Cac bai tap se code o day
    ///Dau tien la một danh sách hàng cột
    // Thuoc tinh thi nen ghi ngoài children với child
    //Muon long no thi nhu the nay
    //Ctr+ .
    //lam giua the cho nhanh
    //? Cho no Container day lam gi
    return Container(
      color: Colors.blue,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Ghi duong dan anh vo do voi ten cua buc anh
            //Anh chua co kich thuoc nen khong xuat hien
            //Chắc ảnh phải ở trong cái gì đó mới hiện lên
            //Gio chi cho xoa container nhanh ne
            //Ctr+. => Remove this widget

            //Gio lam 1 lan click thi tang hinh anh xuc xac tang len 1
            InkWell(
              onTap: () {
                //Dung setState trong nut nhan moi cap nhat lai man hinh
                setState(() {
                  random;
                });
              },
              child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  //Chi can doi ten anh o day
                  child: Image.asset('assets/images/dice$random1.png')),
            ),

            Container(
              width: 150,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  random;
                });
              },
              child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  child: Image.asset('assets/images/dice$random2.png')),
            ),
          ],
        ),
      ),
    );
  }
}
