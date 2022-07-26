import 'package:flutter/material.dart';
import 'package:flutter_application_1/data_card.dart';

class TinhToanScreen extends StatefulWidget {
  const TinhToanScreen({Key? key}) : super(key: key);
  @override
  State<TinhToanScreen> createState() => _ThucHanhScreenState();
}

class _ThucHanhScreenState extends State<TinhToanScreen> {
  Datacard datacard = Datacard();
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
                  itemCount: datacard.danhSachCard.length,
                  shrinkWrap: true,
                  separatorBuilder: (_, __) => Container(
                        height: 1,
                        width: 500,
                        color: Colors.green,
                      ),
                  itemBuilder: (_, index) {
                    return Center(
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 60,
                                  child: Image.asset(
                                      datacard.danhSachCard[index].avatar),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Text('${datacard.danhSachCard[index].ten}',
                                          style: const TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey,
                                          )),
                                      Text('${datacard.danhSachCard[index].sdt}',
                                          style: const TextStyle(
                                            fontSize: 15,
                                            color: Colors.red,
                                          )),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
