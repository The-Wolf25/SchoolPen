import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learn/Screens/Onboard.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navnext();
  }

  _navnext() async {
    await Future.delayed(Duration(seconds: 5));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: ((context) => Onboard())));
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'Assets/images/Logop.png',
                  height: 88,
                  width: 84.01,
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'Assets/images/SchoolPen.jpg',
                  width: 165,
                  height: 38,
                ),
                SizedBox(
                  height: 20,
                ),
                const CircularProgressIndicator(
                  backgroundColor: Colors.purple,
                  color: Color.fromARGB(255, 231, 191, 238),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
