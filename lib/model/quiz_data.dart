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
    Quiz(cauHoi: '1+1=5', traLoi: false),
    Quiz(cauHoi: 'Chó với mèo con nào to hơn => mèo', traLoi: false),
    Quiz(cauHoi: '1+3=4', traLoi: true),
    Quiz(cauHoi: '1+8=9', traLoi: true),
    Quiz(cauHoi: '3+4=5', traLoi: false),
    Quiz(cauHoi: '9+9=9', traLoi: false),
    Quiz(cauHoi: '4+1=5', traLoi: true),
    Quiz(cauHoi: '2+1=5', traLoi: false),
    Quiz(cauHoi: '3+2=5', traLoi: true),
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

//Tra ve bool
  bool layTraLoi() {
    return listData[demCauHoi].traLoi;
  }
}
