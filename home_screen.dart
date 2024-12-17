import 'dart:async';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> imageList = [
    "assets/slider1.png",
    "assets/slider2.png",
    "assets/slider3.png",
  ];
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

  
    Timer.periodic(Duration(seconds: 3), (timer) {
      if (_scrollController.hasClients) {
        final nextScrollPosition = _scrollController.position.pixels + 300;

        if (nextScrollPosition >= _scrollController.position.maxScrollExtent) {
          _scrollController.animateTo(
            0, 
            duration: Duration(seconds: 2),
            curve: Curves.easeInOut,
          );
        } else {
          _scrollController.animateTo(
            nextScrollPosition,
            duration: Duration(seconds: 2),
            curve: Curves.easeInOut,
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 70),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset("assets/firsticon.png", width: 50),
              ),
              Text(
                "Gausala, KTM",
                style: TextStyle(
                  fontSize: 25,
                  color: const Color.fromARGB(255, 48, 45, 45),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset("assets/secondicon.png", width: 50),
            ],
          ),
          SizedBox(height: 2),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal, 
            controller: _scrollController, 
            child: Row(
              children: [
                for (var image in imageList)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      image,
                      width: 300, 
                      height: 200, 
                      fit: BoxFit.cover, 
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 3),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Vegetables",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          
        ],
      ),
    );
  }
}