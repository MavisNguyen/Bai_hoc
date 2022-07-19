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
        color: Color(0xff095c92),
        child: Center(
          child: Column(
            children: [
              Container(
                width: 500,height: 200,alignment: Alignment.bottomCenter,
                child: Text(
                  'Facebook',style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ),
              Container(
                height: 25,
              ),
              Container(
                width: 300,height: 50,padding: const EdgeInsets.only(left: 18),alignment: Alignment.centerLeft,
                 decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),color: Colors.white,),
                child: Text(
                  'Your Email or Phone',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ), 
              ),
              Container(
                height: 15,
              ),
              Container(
                width: 300,height: 50,padding: const EdgeInsets.only(left: 18),alignment: Alignment.centerLeft,
                 decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),color: Colors.white,),
                child: Text(
                  'Your Password',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ), 
              ),
              Container(
                height: 15,
              ),
              Container(
                width: 300,height: 50,alignment: Alignment.center,
                 decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),    color: Color(0xff1a88b9),),
                child: MaterialButton(
                  onPressed: (){},
                  minWidth: 300,height: 50,
                  child: Text(
                    'LOG IN',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ), 
              ),
              Container(
                height: 40,width: 300,alignment: Alignment.bottomCenter,
                child: Text(
                  'Sign in',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ), 
              ),
              Container(
                height: 25,width: 300,alignment: Alignment.bottomCenter,
                child: Text(
                  'Need Help?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ), 
              ),
            ],
          ),
        ),
      )
    );
  }
}
