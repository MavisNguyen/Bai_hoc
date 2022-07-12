import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/quiz_data.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class TinhToanScreen extends StatefulWidget {
  const TinhToanScreen({Key? key}) : super(key: key);

  @override
  State<TinhToanScreen> createState() => _ThucHanhScreenState();
}

class _ThucHanhScreenState extends State<TinhToanScreen> {
  //1. Goi ten manhinh quizData
  QuizData quizData = QuizData();
  int count = 0;

  @override
  Widget build(BuildContext context) {
    ///! MOI MAN HINH CAN CO SCAFFORD
    //Moi lan bam next 1 cau hoi

    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 51, 50, 50),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 100,
              width: 400,
              child: Text(
                'ĐIỂM: ${quizData.score}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 300,
              //Hien cau hoi dau tien
              child: Text(
                quizData.layCauHoi(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: 320,
              height: 50,
              color: Colors.green,
              alignment: Alignment.center,
              child: MaterialButton(
                height: 40,
                minWidth: 320,
                onPressed: () {
                  if (quizData.layTraLoi() == true) {
                    setState(() {
                      //Khi cai nao muon cap nhat man hinh thi nho co setState
                      //Dung thi next cau hoi nen moi cap nhat
                      quizData.cauHoiTiepTheo();
                    });
                  } else {
                    setState(() {
                      quizData.reset() ;
                    });
                   Alert(
      context: context,
      type: AlertType.info,
      title: "Sai roi",
      desc: "Gang luyen tap cho nhiu vao.",
      buttons: [
        DialogButton(
          child: Text(
            "COOL",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          width: 120,
        )
      ],
    ).show();
                    
                    
                  }
                },
                child: const Text(
                  'TRUE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            
            Container(
              height: 20,
            ),
            Container(
              width: 320,
              height: 50,
              color: Colors.red,
              alignment: Alignment.center,
              child: MaterialButton(
                height: 40,
                minWidth: 320,
                onPressed: () {
                  if (quizData.layTraLoi() == false) {
                    setState(() {
                      //Khi cai nao muon cap nhat man hinh thi nho co setState
                      //Dung thi next cau hoi nen moi cap nhat
                      quizData.cauHoiTiepTheo();
                    });
                  } else {
                    print('sai roi sep');
                     setState(() {
                      quizData.reset() ;
                    });
                       Alert(
      context: context,
      type: AlertType.info,
      title: "Sai roi",
      desc: "Gang luyen tap cho nhiu vao.",
      buttons: [
        DialogButton(
          child: Text(
            "COOL",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          width: 120,
        )
      ],
    ).show();
                  }
                },
                child: const Text(
                  'FALSE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
