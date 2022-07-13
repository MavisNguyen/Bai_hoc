import 'package:flutter_application_1/model/quiz.dart';

class QuizData {
  ///Chua danh sach cac cau hoi va cau tra loi
  ///ctr+space no tu add thu vien vao
  ///Cai nay la mot danh sach quiz
  ///Chuyen nghiep hon la thay vi de count ben kia thi cho ben nay lam het
  ///ben kia chi co goi va dùng thoi
  int demCauHoi = 0;
  int score = 0;

  ///
  List<Quiz> listData = [
    Quiz(
        cauHoi: '1 + 1',
        cauTraLoi1: '5',
        cauTraLoi2: '3',
        cauTraLoi3: '2',
        cauTraLoiDung: '2'),
    Quiz(
        cauHoi: '12 + 16',
        cauTraLoi1: '28',
        cauTraLoi2: '38',
        cauTraLoi3: '22',
        cauTraLoiDung: '28'),
    Quiz(
        cauHoi: '32 + 8',
        cauTraLoi1: '52',
        cauTraLoi2: '40',
        cauTraLoi3: '25',
        cauTraLoiDung: '40'),
    Quiz(
        cauHoi: '7 + 12',
        cauTraLoi1: '25',
        cauTraLoi2: '36',
        cauTraLoi3: '19',
        cauTraLoiDung: '19'),
    Quiz(
        cauHoi: '33 + 77',
        cauTraLoi1: '100',
        cauTraLoi2: '110',
        cauTraLoi3: '101',
        cauTraLoiDung: '110'),
    Quiz(
        cauHoi: '5 x 15',
        cauTraLoi1: '75',
        cauTraLoi2: '34',
        cauTraLoi3: '25',
        cauTraLoiDung: '75'),
    Quiz(
        cauHoi: '64 : 8',
        cauTraLoi1: '5',
        cauTraLoi2: '3',
        cauTraLoi3: '8',
        cauTraLoiDung: '8'),
    Quiz(
        cauHoi: '37 + 38',
        cauTraLoi1: '74',
        cauTraLoi2: '75',
        cauTraLoi3: '72',
        cauTraLoiDung: '75'),
    Quiz(
        cauHoi: '11 x 11',
        cauTraLoi1: '111',
        cauTraLoi2: '121',
        cauTraLoi3: '131',
        cauTraLoiDung: '121'),
    Quiz(
        cauHoi: '2048 : 2',
        cauTraLoi1: '1020',
        cauTraLoi2: '1023',
        cauTraLoi3: '1024',
        cauTraLoiDung: '1024'),
    Quiz(
        cauHoi: '123 + 327',
        cauTraLoi1: '450',
        cauTraLoi2: '350',
        cauTraLoi3: '354',
        cauTraLoiDung: '450'),
  ];

  void cauHoiTiepTheo() {
    //Cau hoi tiep theo nghia la luc no dung zoi
    //Xu ly neu cau hoi max thi quay lai tu dau
    if (demCauHoi == listData.length - 1) {
      demCauHoi = 0;
    } else {
      demCauHoi++;
      score = score + 10;
    }
  }

  void reset() {
    score = 0;
  }

//Tra ve string
  String layCauHoi() {
    return listData[demCauHoi].cauHoi;
  }
String CH1() {
    return listData[demCauHoi].cauTraLoi1;
  }
  String CH2() {
    return listData[demCauHoi].cauTraLoi2;
  }
  String CH3() {
    return listData[demCauHoi].cauTraLoi3;
  }
  String getCauHoi() {
    return listData[demCauHoi].cauHoi;
  }

//Tra ve bool
  String getTraLoi() {
    return listData[demCauHoi].cauTraLoiDung;
  }
}
