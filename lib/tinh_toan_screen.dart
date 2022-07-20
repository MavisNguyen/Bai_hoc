import 'package:flutter/material.dart';
import 'package:flutter_application_1/quiz_data.dart';
import 'package:flutter_application_1/quiz.dart';

class TinhToanScreen extends StatefulWidget {
  const TinhToanScreen({Key? key}) : super(key: key);
  @override
  State<TinhToanScreen> createState() => _ThucHanhScreenState();
}

class _ThucHanhScreenState extends State<TinhToanScreen> {
  quiz Quiz = quiz();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Color(0xff04486b),
        child: Center(
          child: Column(
            children: [
              Container(
                width: 400,
                height: 50,
                alignment: Alignment.center,
                child: Text(
                  'Questions 5/10',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 207,
                width: 260,
                child: Image.asset(
                  'assets/images/tv.png',
                ),
              ),
              Container(
                height: 50,
              ),
              Container(
                width: 400,
                height: 70,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 150,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: MaterialButton(
                        minWidth: 150,
                        height: 60,
                        onPressed: () { },
                        child: Text(
                          'Máy tính',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 150,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: MaterialButton(onPressed: (){},minWidth:150,height: 60,
                        child: Text(
                          'Tivi',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 400,
                height: 100,
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 150,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: MaterialButton(onPressed: (){},minWidth:150,height: 60,
                        child: Text(
                          'Tủ lạnh',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 150,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: MaterialButton(onPressed: (){},minWidth:150,height: 60,
                        child: Text(
                          'Máy giặt',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 150,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Kiểm tra',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
