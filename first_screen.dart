import 'dart:async';

import 'package:flutter/material.dart';
import 'package:laligurashapp/Screens/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
   void initState() {
  super.initState();



      Timer(
        Duration(seconds:10),

        ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondScreen())),

      );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
  leading: BackButton(),
),
            body:Center(
        child: Image.asset("assets/logo.png"),
        )

    );
  }
}