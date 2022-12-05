import 'dart:async';
import 'package:flutter/material.dart';
import 'login-screen.dart';




class SplashScreeen1 extends StatefulWidget {
  static const routeName='/splash-screen';
  const SplashScreeen1({Key? key}) : super(key: key);

  @override
  State<SplashScreeen1> createState() => _SplashScreeen1State();
}

class _SplashScreeen1State extends State<SplashScreeen1> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 4),
            ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
                LoginScreen()
        )
        )
    );
  }
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Image.asset('assets/images/fruitlogo1.png',width: 50,),
                ),
                CircularProgressIndicator(
                  backgroundColor: Colors.tealAccent,
                  color: Colors.purple,
                  strokeWidth: 11,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
