import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/datasp.dart';

class TinhToanScreen extends StatefulWidget {
  const TinhToanScreen({Key? key}) : super(key: key);
  @override
  State<TinhToanScreen> createState() => _ThucHanhScreenState();
}

class _ThucHanhScreenState extends State<TinhToanScreen> {
  Datasp datasp = Datasp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              ListView.separated(
                  itemCount: datasp.dssp.length,
                  shrinkWrap: true,
                  separatorBuilder: (_, __) => Center(
                    child: Container(
                          height: 0.7,
                         width: 450,
                          color: Colors.grey,
                        ),
                  ),
                  itemBuilder: (_, index) {
                    return Center(
                        child: Column(
                      children: [
                        Container(width: 450,height: 95,
                          child: Row(
                            children: [
                              Image.network(datasp.dssp[index].anh,width: 80,height: 80,alignment: Alignment.centerLeft,),
                              Container(width: 10,),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 320,height: 30,alignment: Alignment.bottomLeft,
                                      child: Text(
                                        datasp.dssp[index].ten,
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 320,height:20,alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: [
                                          Container(
                                            width:15,height: 15,
                                            child: Image.network('assets/sanpham/dl.png',alignment: Alignment.centerLeft,)),
                                         
                                          Container(width:305,height: 15,
                                            alignment: Alignment.centerLeft,
                                            child: Text(datasp.dssp[index].gia, style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 320,height: 20,alignment: Alignment.centerLeft,
                                      child: Text(
                                        datasp.dssp[index].diadiem,
                                        style: TextStyle(
                                          fontSize:12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 320,height: 20,alignment: Alignment.topLeft,
                                      child: Text(
                                        datasp.dssp[index].luotmua,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
