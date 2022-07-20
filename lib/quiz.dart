import 'package:flutter_application_1/quiz_data.dart';

class quiz {
  int dem = 0;
  int score = 0;
  List<quizdata> listdata = [
    quizdata(
        ans1: 'Máy tính',
        ans2: 'Tivi',
        ans3: 'Tủ lạnh',
        ans4: 'Máy giặt',
        ancr: 'Tivi'),
  ];
  void TT() {

    if (dem == listdata.length - 1) {
      dem = 0;
    } else {
      dem++;
      score = score + 10;
    }
  }
  void reset() {
    score = 0;
  }
  String CH1() {
    return listdata[dem].ans1;
  }
  String CH2() {
    return listdata[dem].ans2;
  }
  String CH3() {
    return listdata[dem].ans3;
  }
  String CH4() {
    return listdata[dem].ans4;
  }
  String CR() {
    return listdata[dem].ancr;
  }
}
