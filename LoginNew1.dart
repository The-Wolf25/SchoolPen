import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learn/Screens/Chooseprofile.dart';
import 'package:learn/Screens/SignupNew1.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:learn/Screens/dialog.dart';

class LoginNew1 extends StatefulWidget {
  const LoginNew1({Key? key}) : super(key: key);

  @override
  State<LoginNew1> createState() => _LoginNew1State();
}

class _LoginNew1State extends State<LoginNew1> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  createUserWithEmailAndPassword() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _email.text,
        password: _password.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          child: Column(
            children: [
              Container(
                  child: Stack(
                children: [
                  Image.asset('Assets/images/LoginTop.png'),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 51, vertical: 149),
                    child: Container(
                        alignment: Alignment.center,
                        width: 258,
                        height: 154,
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Hello Again!',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 32,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Welcome Back, We’ve been waiting for you.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                ],
              )),
              Container(
                height: 400,
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24))),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 24, top: 0),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(145, 99, 215, 1.0)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Container(
                              alignment: Alignment.center,
                              child: Form(
                                key: _formkey,
                                child: TextFormField(
                                  controller: _email,
                                  validator: (Text) {
                                    if (Text == null || Text.isEmpty) {
                                      return 'Please Enter Email';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    disabledBorder: InputBorder.none,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 0, style: BorderStyle.none),
                                      borderRadius: BorderRadius.circular(35),
                                    ),
                                    errorBorder: InputBorder.none,
                                    fillColor:
                                        Color.fromRGBO(231, 216, 248, 0.3),
                                    filled: true,
                                    hintText: 'Email',
                                    hintStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 203, 205, 205),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 0, style: BorderStyle.none),
                                      borderRadius: BorderRadius.circular(35),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 24),
                              child: Container(
                                alignment: Alignment.center,
                                child: TextFormField(
                                  controller: _password,
                                  validator: (yext) {
                                    if (yext == null || yext.isEmpty) {
                                      return 'Please Ente';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    suffixIcon: Padding(
                                      padding: const EdgeInsets.only(right: 12),
                                      child: Icon(
                                        Icons.visibility,
                                        color:
                                            Color.fromARGB(255, 213, 121, 229),
                                      ),
                                    ),
                                    disabledBorder: InputBorder.none,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 0, style: BorderStyle.none),
                                      borderRadius: BorderRadius.circular(35),
                                    ),
                                    errorBorder: InputBorder.none,
                                    fillColor:
                                        Color.fromRGBO(231, 216, 248, 0.3),
                                    filled: true,
                                    hintText: 'Password',
                                    hintStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 203, 205, 205),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 0, style: BorderStyle.none),
                                      borderRadius: BorderRadius.circular(35),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 22, top: 8),
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(
                                    fontSize: 11.5,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 190, 116, 203)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 10),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()));
                              setState(() {});
                              if (_formkey.currentState!.validate()) {
                                createUserWithEmailAndPassword();
                              }
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 55,
                              child: Text(
                                'Next',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(145, 99, 215, 1),
                                  borderRadius: BorderRadius.circular(32)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Stack(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Dont have an account?',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(169, 169, 177, 1)),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SignupNew()));
                                  },
                                  child: Text(
                                    'Signup',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(145, 99, 215, 1)),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
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
