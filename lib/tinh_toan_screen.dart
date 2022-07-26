import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TinhToanScreen extends StatefulWidget {
  const TinhToanScreen({Key? key}) : super(key: key);
  @override
  State<TinhToanScreen> createState() => _ThucHanhScreenState();
}

class _ThucHanhScreenState extends State<TinhToanScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(),
      body: Container(
        color: Color(0xff33333d),
        child: Center(
          child: Column(
            children: [
              Container(
                height: 50,
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/lg.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Container(
                      width: 20,
                    ),
                    Container(
                      width: 300,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Log in to Rally ',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      width: 900,
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Don't have an acount? ",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      width: 70,
                      alignment: Alignment.center,
                      height: 25,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          'SIGN UP ',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
              ),
              Container(
                width: 400,
                height: 30,
                padding: const EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xff26282f),
                ),
                child: Text(
                  'Username',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(height: 5,),
              Container(
                width: 400,
                height: 30,
                padding: const EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xff26282f),
                ),

                child: Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(height: 10,),
              Container(
                height: 20,width: 400,
                child: Center(
                  child: Row(
                  children: [
                    Image.asset('assets/images/cr.png',width: 20,height: 20,),
                    Container(
                      width: 100,alignment: Alignment.center,
                      child: Text('Remember me', style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                    Container(
                      width: 210,
                    ),
                    Container(
                      width: 70,
                      decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(4)),
                      child: MaterialButton(onPressed: (){},
                        child: Row(
                          children: [
                            Image.asset('assets/images/lich.png',width: 15,height: 15,),
                            Text('LOGIN',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    )
                  ],
                  ),
                ),

              ),
              Container(height: 200,),
              Row(
                children: [Container(width: 10,),
                  Container(
                height: 30,width: 80,
                decoration: BoxDecoration(color: Colors.purple,borderRadius: BorderRadius.circular(6)),
                child: MaterialButton(onPressed: (){},
                  child: Row(
                    children: [
                      Container(width: 5,),
                      Image.asset('assets/images/back.png',width: 15,height: 15,color: Colors.white,alignment: Alignment.center),
                      Container(width: 10,),
                      Text('Back',style: TextStyle(
                        fontSize:10,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),)
                    ],
                  ),
                ),
              )],
              )
            ],
          ),
        ),
      ),

    );
  }
}
