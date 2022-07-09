import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';

class ThucHanhScreen extends StatefulWidget {
  const ThucHanhScreen({Key? key}) : super(key: key);

  @override
  State<ThucHanhScreen> createState() => _ThucHanhScreenState();
}

class _ThucHanhScreenState extends State<ThucHanhScreen> {
  //Phai bo bien tren nay moi chay nha :v

  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Container(
      color:  const Color.fromARGB(255, 243, 241, 224),
      child: Padding(
    
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  height: 34, width: 50,
                  color: const Color(0xff36632c),
                  child: MaterialButton(onPressed: ( ) {},
                  child: Container(
                  child: Image.asset('assets/images/back.png',color: Color.fromARGB(255, 233, 224, 224), width: 30, height: 30, ),

                  ),
                  ),
                ),
                Container(
                   height: 34, width: 300,
                   color: const Color(0xff36632c),
                   alignment: Alignment.center,
                   child: const Text(
                    'Chi tiết món',style: TextStyle(fontSize: 18,  color: Colors.white),
                   ),
                ),

                Container(
                  height: 34, width: 50,
                  color: const Color(0xff36632c),
                  child: Image.asset('assets/images/cart.png',
                   color:  Color.fromARGB(255, 243, 241, 224),),
                ),
              ],
            ),
            Container(
              height: 5,
            ),
            //1. AppFood
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    Container(
                      
                      color: const Color(0xffc6e377),
                      height: 30, width: 165,
                      alignment: Alignment.centerRight,
                      child: Image.asset('assets/images/f.png' , color:  Color.fromARGB(255, 243, 241, 224)), 
                    ),
                    Container(
                      color: const Color(0xffc6e377),
                      height: 30, width: 10,
                    ),
                    Container(
                      color: const Color(0xffc6e377),
                      height: 30, width: 225,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'APP FOOD', style: TextStyle(color:Colors.black,fontSize: 20, fontWeight: FontWeight.bold, ),
                      ),
                    ),
                   

                   ],
                 ),
            Container(
              height: 5,
            ),
            //2.	Hình ảnh-> Luoi dung anh thay bang containner
            SizedBox(
              height: 165,width: 287,
              child: Image.asset('assets/images/com.png'),
            ),
            Container(
              height: 5,
            ),
            //3. Chu
            SizedBox(
               height: 27,width: 400,
              child:   const Text(         
              'Cơm gà xối mỡ',
              style: TextStyle(
                  fontSize: 22,
                  color: Color.fromARGB(255, 104, 167, 4),
                  fontWeight: FontWeight.bold,
                  ),
            ),
            ),

            Container(
              height: 5,
            ),
            Container(
               height: 40,width: 400,
                alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.all(8),
              color: Colors.red,
              child: const Text(
                '30.000 đ',
                style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 243, 241, 224),
                    fontWeight: FontWeight.bold,
                    ),
              ),
              ),
            ),
            //4. Gia Tien

            Container(
              height: 5,
            ),
            //5. Chu sieu dai
            const SizedBox(
              width: 400,
              child: Text(
              'Đĩa cơm gà bày ra đĩa trông bắt mắt với phần cơm vừa đủ ăn lưng bụng, thịt gà trộn bay lên trên, trang trí thêm ít rau răm và hành tây thái mỏng cùng muối tiêu bột. Cơm gà ăn kèm với ớt tương làm tại nhà, cay đậm đà thì quả thực là đảo khẩu Chén cạnh cải nấu với gừng tươi và gỏi đu đủ, cà rốt thái sợi mỏng là những thành phân hỗ trợ tuyệt với làm tôn thêm hương vị đĩa cơm gà. Nhịp sống phố cổ khiến ta muốn thưởng thức.'
              ),
            ),
            Container(
              height: 5,
            ),
            Center(
              child: Column(
                ///Thang strech nay no ep full row trong column

                children: [
                  //6. So luong
                  const Text(
                    'Số lượng',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    height: 5,
                  ),
                  //7. So luong
                  Container(
                    //CHo border(khung no to len)
                    width: 120,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      //Khung
                      border: Border.all(color: const Color.fromARGB(255, 0, 109, 4), ),
                      //Bo tron
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Text('1', textAlign: TextAlign.center),
                  ),
                  Container(
                    height: 5,
                  ),
                  //8. Button
                  SizedBox(
                    width: 290,
                    child: MaterialButton(
                      padding: const EdgeInsets.only(top: 24, bottom: 24),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32)),
                      color: Colors.green,
                      onPressed: () {},
                      child: const Text(
                        'Thêm vào giỏ',
                        style: TextStyle(color:  Color.fromARGB(255, 243, 241, 224)),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        
        ),
      ),
       
    );
  }
}
