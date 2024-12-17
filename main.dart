import 'package:flutter/material.dart';
import 'package:laligurashapp/Screens/first_screen.dart';

void main() {
  runApp(FirstPage(

  ));
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:FirstScreen(),
    );
  }
}