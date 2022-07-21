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
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bk.png', ),fit: BoxFit.fill
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Container(
                width: 400,
                height: 150,
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Welcome Back!',
                  style: TextStyle(
                    color: Color(0xff8f9974),
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: 400,
                height: 20,
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Sign in to your account',
                  style: TextStyle(
                    color: Color(0xffc2c2c2),
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                width: 400,
                height: 50,
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Email',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 10,
              ),
              Container(
                color: const Color.fromARGB(255, 241, 239, 239),
                width: 400,
                height: 40,
                child: Row(
                  children: [
                    Container(
                      width: 10,
                    ),
                    Container(
                      width: 380,
                      height: 40,
                      alignment: Alignment.centerLeft,
                      color: const Color.fromARGB(255, 236, 236, 236),
                      child: const Text(
                        'Enter your Email',
                        style: TextStyle(
                          color: Color.fromARGB(255, 163, 163, 163),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 400,
                height: 30,
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Password',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 10,
              ),
              Container(
                color: const Color.fromARGB(255, 241, 239, 239),
                width: 400,
                height: 40,
                child: Row(
                  children: [
                    Container(
                      width: 10,
                    ),
                    Container(
                      width: 380,
                      height: 40,
                      alignment: Alignment.centerLeft,
                      color: const Color.fromARGB(255, 236, 236, 236),
                      child: const Text(
                        'Enter your Password',
                        style: TextStyle(
                          color: Color.fromARGB(255, 163, 163, 163),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 10,
              ),
              SizedBox(
                height: 30,
                width: 400,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/cr.png',
                      height: 15,
                      width: 15,
                    ),
                    Container(
                      width: 25,
                    ),
                    SizedBox(
                      width: 180,
                      child: const Text(
                        'Remember me',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                    ),
                    Container(
                      width: 180,
                      alignment: Alignment.centerRight,
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Color(0xff8f9974),
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 20,
              ),
              Container(
                width: 400,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xff8f9974),
                ),
                alignment: Alignment.center,
                child: MaterialButton(
                  onPressed: () {},
                  minWidth: 400,
                  height: 50,
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                width: 400,
                height: 30,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      width: 200,
                      height: 30,
                      child: const Text(
                        'Not an accout yet?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 200,
                      height: 30,
                      child: const Text(
                        ' Sign Up',
                        style: TextStyle(
                          color: Color(0xff8f9974),
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
