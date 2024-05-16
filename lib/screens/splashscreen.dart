import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo/screens/todopage.dart';




class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {


  @override
  void initState() { Timer(Duration(seconds: 3),() {
    Navigator.push(context,MaterialPageRoute(builder: (context) => Summi(),));
  },);
  // TODO: implement initState
  super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xd5a1b0dc),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Center(
              child:
              CircleAvatar(radius: 70,
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJ_jOQtvVPjtNPZskEqy3_25ymP2oLWjgzLg&s"),
          )),
          Spacer(),
          Text("Powered By",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 8),
          Text("jeemboomba",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          Spacer(),
        ],
      ),
    );
  }
}
