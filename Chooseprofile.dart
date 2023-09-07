import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learn/Screens/FillName.dart';
import 'package:learn/Screens/Parent.dart';
import 'package:learn/Screens/Student.dart';
import 'package:learn/Screens/Teacher.dart';

class chooseprofile extends StatefulWidget {
  const chooseprofile({Key? key}) : super(key: key);

  @override
  State<chooseprofile> createState() => _chooseprofileState();
}

class _chooseprofileState extends State<chooseprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Image.asset(
                  'Assets/images/mansitting.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(
                height: 55,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Text(
                      'How you gonna use this app?',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(145, 99, 215, 1),
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: InkWell(
                          onTap: () {
                            setState(() {});
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Student()));
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 152,
                            height: 43,
                            child: Text(
                              'Student',
                              style: TextStyle(
                                  color: Color.fromRGBO(28, 24, 25, 1.0),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            ),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(231, 216, 248, 1.0),
                                borderRadius: BorderRadius.circular(32)),
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: InkWell(
                            onTap: () {
                              setState(() {});
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Teacher()));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 152,
                              height: 43,
                              child: Text(
                                'Teacher',
                                style: TextStyle(
                                    color: Color.fromRGBO(28, 24, 25, 1.0),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                              ),
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(231, 216, 248, 1.0),
                                  borderRadius: BorderRadius.circular(32)),
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 0),
                    child: InkWell(
                      onTap: () {
                        setState(() {});
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyWidget()));
                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          alignment: Alignment.center,
                          width: 152,
                          height: 43,
                          child: Text(
                            'Parent',
                            style: TextStyle(
                                color: Color.fromRGBO(28, 24, 25, 1.0),
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(231, 216, 248, 1.0),
                              borderRadius: BorderRadius.circular(32)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
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
    );
  }
}
