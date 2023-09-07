import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learn/Screens/FillName.dart';

class Student extends StatelessWidget {
  const Student({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          child: Column(children: [
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
        Container(
          child: Stack(
            children: [
              Container(
                child: Image.asset(
                  'Assets/images/G2.png',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 163, top: 17),
                child: Text(
                  'Student',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 163, top: 45),
                child: Container(
                  width: 143,
                  height: 86,
                  child: Text(
                    'Eager to learn and grow? \nJoin as a student to access \nknowledge, engage with \npeers, and thrive.',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        height: 1.3,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 35,
        ),
        Align(
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => FillName()));
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
      ])),
    ));
  }
}
