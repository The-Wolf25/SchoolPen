import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learn/Screens/Chooseprofile.dart';
import 'package:learn/Screens/LoginNew1.dart';

class Schoolinfo extends StatefulWidget {
  const Schoolinfo({Key? key}) : super(key: key);

  @override
  State<Schoolinfo> createState() => _SchoolinfoState();
}

class _SchoolinfoState extends State<Schoolinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
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
                                  'Almost Done',
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
                                  'Only the last step remains',
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
                          'Enter your school info',
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
                          Container(
                            alignment: Alignment.center,
                            width: 312,
                            child: TextField(
                              decoration: InputDecoration(
                                disabledBorder: InputBorder.none,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0, style: BorderStyle.none),
                                  borderRadius: BorderRadius.circular(35),
                                ),
                                errorBorder: InputBorder.none,
                                fillColor: Color.fromRGBO(231, 216, 248, 0.3),
                                filled: true,
                                hintText: 'School Name',
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
                          SizedBox(
                            height: 12,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              alignment: Alignment.center,
                              width: 312,
                              child: TextField(
                                decoration: InputDecoration(
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.only(right: 12),
                                  ),
                                  disabledBorder: InputBorder.none,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 0, style: BorderStyle.none),
                                    borderRadius: BorderRadius.circular(35),
                                  ),
                                  errorBorder: InputBorder.none,
                                  fillColor: Color.fromRGBO(231, 216, 248, 0.3),
                                  filled: true,
                                  hintText: 'Address',
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
                          SizedBox(
                            height: 12,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              alignment: Alignment.center,
                              width: 312,
                              child: TextField(
                                decoration: InputDecoration(
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.only(right: 12),
                                    child: Icon(
                                      Icons.panorama_fish_eye,
                                      color: Color.fromARGB(255, 213, 121, 229),
                                    ),
                                  ),
                                  disabledBorder: InputBorder.none,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 0, style: BorderStyle.none),
                                    borderRadius: BorderRadius.circular(35),
                                  ),
                                  errorBorder: InputBorder.none,
                                  fillColor: Color.fromRGBO(231, 216, 248, 0.3),
                                  filled: true,
                                  hintText: 'DIOS Code',
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
                          SizedBox(
                            height: 12,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              alignment: Alignment.center,
                              width: 312,
                              child: TextField(
                                decoration: InputDecoration(
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.only(right: 12),
                                    child: Icon(
                                      Icons.document_scanner,
                                      color: Color.fromARGB(255, 213, 121, 229),
                                    ),
                                  ),
                                  disabledBorder: InputBorder.none,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 0, style: BorderStyle.none),
                                    borderRadius: BorderRadius.circular(35),
                                  ),
                                  errorBorder: InputBorder.none,
                                  fillColor: Color.fromRGBO(231, 216, 248, 0.3),
                                  filled: true,
                                  hintText: 'Upload Document',
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
                          Padding(
                            padding: const EdgeInsets.only(right: 50, top: 10),
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                '',
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
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => chooseprofile()));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 319,
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
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Container(
                        child: Stack(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Already have an account?',
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
                                            builder: (context) => LoginNew1()));
                                  },
                                  child: Text(
                                    'Login',
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
