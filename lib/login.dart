import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

FocusNode F1 = FocusNode();
FocusNode F2 = FocusNode();

class _LoginState extends State<Login> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    F1.addListener(() {
      setState(() {});
    });
    F2.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    alignment: Alignment.center,
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.grey.shade800, width: 2),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(1, 1),
                            blurRadius: 10,
                            color: Colors.grey.shade800,
                          )
                        ]),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Log in',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Log in with one of the following options.',
                style: TextStyle(fontSize: 16, color: Colors.grey.shade400),
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 170,
                  height: 60,
                  child: Icon(
                    Icons.facebook,
                    color: Colors.white,
                    size: 27,
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(157, 53, 53, 53),
                    border: Border.all(color: Colors.grey.shade800, width: 2),
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                Container(
                  width: 170,
                  height: 60,
                  child: Icon(
                    Icons.apple,
                    color: Colors.white,
                    size: 27,
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(157, 53, 53, 53),
                    border: Border.all(color: Colors.grey.shade800, width: 2),
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Email',
                style: TextStyle(
                  color: Colors.grey.shade200,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7.5),
              child: Container(
                color: Color.fromARGB(157, 53, 53, 53),
                child: TextField(
                  style: TextStyle(
                      color: Colors.grey.shade200,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                  focusNode: F1,
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    hintStyle: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey.shade800,
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 2,
                        color: Color(0xffcf25af),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Password',
                style: TextStyle(
                  color: Colors.grey.shade200,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7.5),
              child: Container(
                color: Color.fromARGB(157, 53, 53, 53),
                child: TextField(
                  style: TextStyle(
                      color: Colors.grey.shade200,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                  focusNode: F2,
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey.shade800,
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 2,
                        color: Color(0xffcf25af),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 45),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 65),
              child: Container(
                alignment: Alignment.center,
                width: 300,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xffb716dc),
                      Color(0xffcf25af),
                    ],
                  ),
                ),
                child: Text(
                  'Log in',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have an account? ',
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    ' Sign up ',
                    style: TextStyle(
                      color: Colors.grey.shade50,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
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
