import 'package:flutter/material.dart';
import 'package:flutter_application_1/day.dart';
import 'package:flutter_application_1/day_data.dart';

class TinhToanScreen extends StatefulWidget {
  const TinhToanScreen({Key? key}) : super(key: key);

  @override
  State<TinhToanScreen> createState() => _ThucHanhScreenState();
}

class _ThucHanhScreenState extends State<TinhToanScreen> {
  daydata Daydata = daydata();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Column(
            
            children: [
              Container(
                alignment: Alignment.center,
                color: Colors.black,
                height: 30,width: 500,
                child: Text(
                  'Đăng nhập vào hệ thống',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.purple,
                height: 220,width: 500,
                child: Text(
                  'CSCOM',style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                  ),
                ),
              ),
              Container(
                height: 30,
              ),
              Container(
                width: 300,height: 50,alignment:Alignment.center,
                 
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black  ),
              ),
              child: Text(
                'TenDangNhap',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
              ),
              ),
              Container(
                height: 30,
              ),
               Container(
                width: 300,height: 50,alignment:Alignment.center,
                 
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black  ),
              ),
              
              child: Text(
                '***************',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
              ),
              ),
              Container(
                height: 30,
              ),
              Container(
                width: 300,height: 50,alignment:Alignment.center,
                color: Colors.purple,
                child: MaterialButton(
                  minWidth: 300,height: 50,
                  onPressed: () {},
                  child: Text(
                    'Đăng nhập',style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                
                  ),
                ),
              ),
              Container(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                     height:20, width: 100,alignment: Alignment.centerRight,
                    child: Image.asset('assets/images/cr.png',),
                  ),
                  Container(
                     height:40, width:300,alignment: Alignment.centerLeft,
                    child: Text(
                      'Lưu thông tin đăng nhập',style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
