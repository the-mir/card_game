import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: AppBody(),
      ),
    );
  }
}

class AppBody extends StatefulWidget {
  const AppBody({Key? key}) : super(key: key);

  @override
  State<AppBody> createState() => _AppBodyState();
}
class _AppBodyState extends State<AppBody> {
  int leftcard=2;
  int Rightcard=2;
  int rValue=0,lValue=0,cl=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
            image:AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          Image.asset("assets/images/logo.jpeg"
            ,
            height: 100,
            fit:BoxFit.fitHeight ,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/images/card$leftcard.png"),
              Image.asset("assets/images/card$Rightcard.png"),
            ],
          ),
          TextButton(onPressed: (){
            setState(() {
              leftcard =Random().nextInt(13)+2;
              Rightcard =Random().nextInt(13)+2;
              cl++;
              if(leftcard>Rightcard)
                {
                  lValue++;
                }
              else
                {
                  rValue++;
                }
            });
          },
            child: Image.asset("assets/images/dealbutton.png"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text("Player : 1",
                    style:TextStyle(color: Colors.white,fontSize: 20.0) ,
                  ),
                  SizedBox(height: 8.0,),
                  Text("$lValue",
                    style:TextStyle(color: Colors.white,fontSize: 20.0),
                  ),
                ],
              ),
              Column(
                children: [
                  Text("Player : 2",
                    style:TextStyle(color: Colors.white,fontSize: 20.0) ,),
                  SizedBox(height: 8.0,),
                  Text("$rValue",
                    style:TextStyle(color: Colors.white,fontSize: 20.0) ,
                  ),
                ],
              ),
            ],
          ),
          TextButton(onPressed: (){
            setState(() {
              lValue=0;
              rValue=0;
            });
          }, child:
          Text("Reset",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
          ),
        ],
      ),
    );
  }
}

