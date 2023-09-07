import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learn/Screens/Chooseprofile.dart';
import 'package:learn/Screens/FillName.dart';

class FillRegion extends StatefulWidget {
  String name;
  FillRegion({Key? key, required this.name}) : super(key: key);

  @override
  State<FillRegion> createState() => _FillRegionState();
}

class _FillRegionState extends State<FillRegion> {
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 55,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Text(
                            'Welcome ${widget.name}  \nWhat is youre region?',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(145, 99, 215, 1),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          disabledBorder: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 0, style: BorderStyle.none),
                            borderRadius: BorderRadius.circular(35),
                          ),
                          errorBorder: InputBorder.none,
                          fillColor: Color.fromRGBO(231, 216, 248, 0.3),
                          filled: true,
                          hintText: 'Enter your region',
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 203, 205, 205),
                          ),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 0, style: BorderStyle.none),
                            borderRadius: BorderRadius.circular(35),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => chooseprofile()));
          },
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
