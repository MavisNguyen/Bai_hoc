

import 'package:flutter/material.dart';

class ThucHanhScreen extends StatefulWidget {
  const ThucHanhScreen({Key? key}) : super(key: key);

  @override
  State<ThucHanhScreen> createState() => _ThucHanhScreenState();
}

class _ThucHanhScreenState extends State<ThucHanhScreen> {
  @override
  Widget build(BuildContext context) {
    //Cac bai tap se code o day
    ///Dau tien la một danh sách hàng cột
    // Thuoc tinh thi nen ghi ngoài children với child
    //Muon long no thi nhu the nay
    //Ctr+ .
    //lam giua the cho nhanh
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        ///ghi o day
        //ko biet no co gì nhấn ctrl+space
        //ko biet no dung nhu the nao thi ro vao
        children: [
          const CircleAvatar(
            backgroundColor: Color.fromARGB(255, 10, 135, 238),
            radius: 40,
          ),
          
          Container(
            color: Colors.white,
            height: 10,
          ),
          Container(
            color: Colors.red,
            width: 150,
            child: const Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                  color: Color.fromARGB(255, 54, 102, 60), fontSize: 16),
                  textAlign:TextAlign.center ,
            ),
          ),
          Container(
            color: Colors.white,
            height: 10,
          ),
          Container(
              color: const Color.fromARGB(255, 218, 206, 206),
              width: 300,
              height: 25,
              child: Row(
                children: const [
                  Icon(
                    Icons.phone,
                    color: Color.fromARGB(255, 54, 102, 60),
                    size: 25,
                  ),
                  Text(
                    textAlign: TextAlign.left,

                    '0706027988',
                    style: TextStyle(
                        color: Color.fromARGB(255, 54, 102, 60), fontSize: 16),
                  ),
                ],
              )),
          Container(
            color: Colors.white,
            height: 5,
          ),
          Container(
              color: const Color.fromARGB(255, 218, 206, 206),
              width: 300,
              height: 25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 54, 102, 60),
                    size: 25,
                  ),
                    Container(
            color: Color.fromARGB(255, 218, 206, 206), width: 20,
          ),
                  Text(
                    textAlign: TextAlign.left,
                    'nguyenhongyen333@gmail.com',
                    style: TextStyle(
                        color: Color.fromARGB(255, 54, 102, 60), fontSize: 16),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
