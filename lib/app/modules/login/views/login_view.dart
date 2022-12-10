import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            margin : const EdgeInsets.all(10),
          height: 470,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 12, 125, 218),
            borderRadius: BorderRadius.circular(70),
            border: Border.all(
              color: const Color.fromARGB(255, 17, 73, 119),
              width: 3,
            ),
          ),
          // padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50, left: 90),
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 25, left: 10, right: 10),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 74, 167, 243),
                    ),
                    // make it center
                    child: const Text(
                      'LOGIN APLIKASI',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 30, left: 33),
                            child: Row(
                              children: const [
                                Text(
                                  'USER',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                SizedBox(
                                  width: 80,
                                ),
                                // input text
                                SizedBox(
                                  width: 200,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 3,
                                        ),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 30, left: 25),
                            child: Row(
                              children: const [
                                Text(
                                  'PASSWORD',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                // input text
                                SizedBox(
                                  width: 200,
                                  child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 3,
                                        ),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 22),
                    child: ElevatedButton(
                      // go to SecondPage
                      onPressed: () => Get.toNamed(Routes.HOME),
              
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(230, 55),
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text('LOGIN'),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
