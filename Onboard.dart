import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:learn/Screens/FillName.dart';
import 'package:learn/Screens/LoginNew1.dart';

class Onboard extends StatefulWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Image.asset(
                  'Assets/images/LoginBG.png',
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      'Assets/images/Schoolpen.png',
                      alignment: Alignment.bottomLeft,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 12),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Learn everything with AI',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: Color.fromRGBO(56, 56, 56, 1))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 12),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      'learn and grow with ai to stay up to date, with ever evolving demand of ai in the future',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          height: 1.5,
                          color: Color.fromRGBO(169, 169, 177, 1))),
                ),
              ),
              SizedBox(
                height: 65,
              ),
              InkWell(
                onTap: () {
                  setState(() {});
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FillName()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Container(
                    alignment: Alignment.center,
                    height: 55,
                    child: Text(
                      'Get Started',
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginNew1()));
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Container(
              alignment: Alignment.center,
              height: 55,
              child: Text(
                'Join As admin',
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
