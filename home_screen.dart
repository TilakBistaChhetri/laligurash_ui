import 'dart:async';
import 'package:flutter/material.dart';
import 'package:laligurashapp/Screens/extra_screen.dart';
import 'package:laligurashapp/Screens/favourite_screen.dart';
import 'package:laligurashapp/Screens/second_screen.dart';
import 'package:laligurashapp/Screens/tenth_screen.dart';

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
  bool _isClicked = false;
  int _currentRating = 0;

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height:50),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:2.0),
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
            SizedBox(height: 10),
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
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height:16),
        
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width:5),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      width:150,
                      height:170,
                      decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius:BorderRadius.circular(10),
                         border: Border.all(
                              color: const Color.fromARGB(255, 192, 182, 182), 
                         width: 2.0,        
                        ),
                    
                      ),
                      child:Stack(
                        children: [
                      
                  Column(
                    mainAxisSize:MainAxisSize.min,
                    children: [
                      SizedBox(height:25),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> TenthScreen()));
                        },
                        child:Image.asset("assets/capcium.png",
                      width:70,
                      height:70,
                      ),
                      ),
                      SizedBox(height:3),
                      Padding(
                        padding: const EdgeInsets.only(left:7),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child:Text("Capcium", style:TextStyle(fontSize:16, color:Colors.black),
                          ),
                        ),
                      ),
                    
                       SizedBox(height:1),
                         Padding(
                        padding: const EdgeInsets.only(left:7),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child:Text("Rs. 140.99", style:TextStyle(fontSize:12,color:Colors.black, fontWeight:FontWeight.bold)),
                          ),
                        ),
                      SizedBox(height: 2),
                      Row(
                        children:List.generate(5, (index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal:1),
                            child: Material(
                              color:Colors.transparent,
                              child:InkWell(
                                onTap:() {
                                  setState(() {
                                    _currentRating = index + 1;
                            
                                    
                                  });
                                },
                                child:Icon(
                                  Icons.star,
                                  color: index < _currentRating? Colors.yellow : Colors.grey,
                                  size:15,
                                )
                              )
                            ),
                          );
                        }),
                      ), 
        
                    ],
                  ),
        
          Positioned(
        right: 2,
        top: 2,
        child: InkWell(
          onTap: () {
            setState(() {
              _isClicked = !_isClicked; 
            });
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavouriteScreen()),
            );
          },
          child: Stack(
            children: [
              Image.asset(
                "assets/love.png",
               height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              if (_isClicked)
                Container(
                  height: 40,
                  width: 40,
                  color: const Color.fromARGB(255, 11, 61, 13).withOpacity(0.5), 
                ),
            ],
          ),
        ),
            ),
        
        
        
        Positioned(
          right:4,
          bottom:25,
        
        child: InkWell(
          onTap: () {
            setState(() {
              _isClicked = !_isClicked; 
            });
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavouriteScreen()),
            );
          },
          child: Stack(
            children: [
              Image.asset(
                "assets/cart.png",
               height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              if (_isClicked)
                Container(
                  height: 40,
                  width: 40,
                  color: const Color.fromARGB(255, 11, 61, 13).withOpacity(0.5), 
                ),
            ],
          ),
        ),
            ),
        
                        ],
                      )
                    ),
                  ),
                
                // Potato 
                  SizedBox(width:2),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      width:150,
                      height:170,
                      decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius:BorderRadius.circular(10),
                         border: Border.all(
                              color: const Color.fromARGB(255, 192, 182, 182), 
                         width: 2.0,        
                        ),
                    
                      ),
                      child:Stack(
                        children: [
                      
                  Column(
                    mainAxisSize:MainAxisSize.min,
                    children: [
                      SizedBox(height:25),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> TenthScreen()));
                        },
                        child:Image.asset("assets/potato.png",
                      width:70,
                      height:70,
                      ),
                      ),
                      SizedBox(height:3),
                      Padding(
                        padding: const EdgeInsets.only(left:7),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child:Text("Potato", style:TextStyle(fontSize:16, color:Colors.black),
                          ),
                        ),
                      ),
                    
                       SizedBox(height:1),
                         Padding(
                        padding: const EdgeInsets.only(left:7),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child:Text("Rs. 140.99", style:TextStyle(fontSize:12,color:Colors.black, fontWeight:FontWeight.bold)),
                          ),
                        ),
                      
                      
        
        
                      SizedBox(height: 2),
                      Row(
                        children:List.generate(5, (index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal:1),
                            child: Material(
                              color:Colors.transparent,
                              child:InkWell(
                                onTap:() {
                                  setState(() {
                                    _currentRating = index + 1;
                            
                                    
                                  });
                                },
                                child:Icon(
                                  Icons.star,
                                  color: index < _currentRating? Colors.yellow : Colors.grey,
                                  size:15,
                                )
                              )
                            ),
                          );
                        }),
                      ), 
        
                    ],
                  ),
        
          Positioned(
        right: 2,
        top: 2,
        child: InkWell(
          onTap: () {
            setState(() {
              _isClicked = !_isClicked; 
            });
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavouriteScreen()),
            );
          },
          child: Stack(
            children: [
              Image.asset(
                "assets/love.png",
               height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              if (_isClicked)
                Container(
                  height: 40,
                  width: 40,
                  color: const Color.fromARGB(255, 11, 61, 13).withOpacity(0.5), 
                ),
            ],
          ),
        ),
            ),
        
        
        
        Positioned(
          right:4,
          bottom:25,
        
        child: InkWell(
          onTap: () {
            setState(() {
              _isClicked = !_isClicked; 
            });
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavouriteScreen()),
            );
          },
          child: Stack(
            children: [
              Image.asset(
                "assets/cart.png",
               height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              if (_isClicked)
                Container(
                  height: 40,
                  width: 40,
                  color: const Color.fromARGB(255, 11, 61, 13).withOpacity(0.5), 
                ),
            ],
          ),
        ),
            ),
        
                        ],
                      )
                    ),
                  ),
        
                  // Tomato
                   SizedBox(width:2),
                   SizedBox(width:5),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      width:150,
                      height:170,
                      decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius:BorderRadius.circular(10),
                         border: Border.all(
                              color: const Color.fromARGB(255, 192, 182, 182), 
                         width: 2.0,        
                        ),
                    
                      ),
                      child:Stack(
                        children: [
                      
                  Column(
                    mainAxisSize:MainAxisSize.min,
                    children: [
                      SizedBox(height:25),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> TenthScreen()));
                        },
                        child:Image.asset("assets/tomato.png",
                      width:70,
                      height:70,
                      ),
                      ),
                      SizedBox(height:3),
                      Padding(
                        padding: const EdgeInsets.only(left:7),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child:Text("Tomato", style:TextStyle(fontSize:16, color:Colors.black),
                          ),
                        ),
                      ),
                    
                       SizedBox(height:1),
                         Padding(
                        padding: const EdgeInsets.only(left:7),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child:Text("Rs. 140.99", style:TextStyle(fontSize:12,color:Colors.black, fontWeight:FontWeight.bold)),
                          ),
                        ),
                      
                      
        
        
                      SizedBox(height: 2),
                      Row(
                        children:List.generate(5, (index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal:1),
                            child: Material(
                              color:Colors.transparent,
                              child:InkWell(
                                onTap:() {
                                  setState(() {
                                    _currentRating = index + 1;
                            
                                    
                                  });
                                },
                                child:Icon(
                                  Icons.star,
                                  color: index < _currentRating? Colors.yellow : Colors.grey,
                                  size:15,
                                )
                              )
                            ),
                          );
                        }),
                      ), 
        
                    ],
                  ),
              
          Positioned(
        right: 2,
        top: 2,
        child: InkWell(
          onTap: () {
            setState(() {
              _isClicked = !_isClicked; 
            });
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavouriteScreen()),
            );
          },
          child: Stack(
            children: [
              Image.asset(
                "assets/love.png",
               height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              if (_isClicked)
                Container(
                  height: 40,
                  width: 40,
                  color: const Color.fromARGB(255, 11, 61, 13).withOpacity(0.5), 
                ),
            ],
          ),
        ),
            ),
        
        
        
        Positioned(
          right:4,
          bottom:25,
        
        child: InkWell(
          onTap: () {
            setState(() {
              _isClicked = !_isClicked; 
            });
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavouriteScreen()),
            );
          },
          child: Stack(
            children: [
              Image.asset(
                "assets/cart.png",
               height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              if (_isClicked)
                Container(
                  height: 40,
                  width: 40,
                  color: const Color.fromARGB(255, 11, 61, 13).withOpacity(0.5), 
                ),
            ],
          ),
        ),
            ),
        
                        ],
                      )
                    ),
                  ),
        
        
        
        
        
                
                
                
                ],
                          ),
              ),
        
              SizedBox(height:5),
               SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width:5),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      width:150,
                      height:170,
                      decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius:BorderRadius.circular(10),
                         border: Border.all(
                              color: const Color.fromARGB(255, 192, 182, 182), 
                         width: 2.0,        
                        ),
                    
                      ),
                      child:Stack(
                        children: [
                      
                  Column(
                    mainAxisSize:MainAxisSize.min,
                    children: [
                      SizedBox(height:25),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> TenthScreen()));
                        },
                        child:Image.asset("assets/onion.png",
                      width:70,
                      height:70,
                      ),
                      ),
                      SizedBox(height:3),
                      Padding(
                        padding: const EdgeInsets.only(left:7),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child:Text("Onion", style:TextStyle(fontSize:16, color:Colors.black),
                          ),
                        ),
                      ),
                    
                       SizedBox(height:1),
                         Padding(
                        padding: const EdgeInsets.only(left:7),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child:Text("Rs. 140.99", style:TextStyle(fontSize:12,color:Colors.black, fontWeight:FontWeight.bold)),
                          ),
                        ),
                      SizedBox(height: 2),
                      Row(
                        children:List.generate(5, (index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal:1),
                            child: Material(
                              color:Colors.transparent,
                              child:InkWell(
                                onTap:() {
                                  setState(() {
                                    _currentRating = index + 1;
                            
                                    
                                  });
                                },
                                child:Icon(
                                  Icons.star,
                                  color: index < _currentRating? Colors.yellow : Colors.grey,
                                  size:15,
                                )
                              )
                            ),
                          );
                        }),
                      ), 
        
                    ],
                  ),
        
          Positioned(
        right: 2,
        top: 2,
        child: InkWell(
          onTap: () {
            setState(() {
              _isClicked = !_isClicked; 
            });
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavouriteScreen()),
            );
          },
          child: Stack(
            children: [
              Image.asset(
                "assets/love.png",
               height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              if (_isClicked)
                Container(
                  height: 40,
                  width: 40,
                  color: const Color.fromARGB(255, 11, 61, 13).withOpacity(0.5), 
                ),
            ],
          ),
        ),
            ),
        
        
        
        Positioned(
          right:4,
          bottom:25,
        
        child: InkWell(
          onTap: () {
            setState(() {
              _isClicked = !_isClicked; 
            });
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavouriteScreen()),
            );
          },
          child: Stack(
            children: [
              Image.asset(
                "assets/cart.png",
               height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              if (_isClicked)
                Container(
                  height: 40,
                  width: 40,
                  color: const Color.fromARGB(255, 11, 61, 13).withOpacity(0.5), 
                ),
            ],
          ),
        ),
            ),
        
                        ],
                      )
                    ),
                  ),
                
                // Cabbage
                  SizedBox(width:2),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      width:150,
                      height:170,
                      decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius:BorderRadius.circular(10),
                         border: Border.all(
                              color: const Color.fromARGB(255, 192, 182, 182), 
                         width: 2.0,        
                        ),
                    
                      ),
                      child:Stack(
                        children: [
                      
                  Column(
                    mainAxisSize:MainAxisSize.min,
                    children: [
                      SizedBox(height:25),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> TenthScreen()));
                        },
                        child:Image.asset("assets/cabbage.png",
                      width:70,
                      height:70,
                      ),
                      ),
                      SizedBox(height:3),
                      Padding(
                        padding: const EdgeInsets.only(left:7),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child:Text("Cabbage", style:TextStyle(fontSize:16, color:Colors.black),
                          ),
                        ),
                      ),
                    
                       SizedBox(height:1),
                         Padding(
                        padding: const EdgeInsets.only(left:7),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child:Text("Rs. 140.99", style:TextStyle(fontSize:12,color:Colors.black, fontWeight:FontWeight.bold)),
                          ),
                        ),
                      
                      
        
        
                      SizedBox(height: 2),
                      Row(
                        children:List.generate(5, (index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal:1),
                            child: Material(
                              color:Colors.transparent,
                              child:InkWell(
                                onTap:() {
                                  setState(() {
                                    _currentRating = index + 1;
                            
                                    
                                  });
                                },
                                child:Icon(
                                  Icons.star,
                                  color: index < _currentRating? Colors.yellow : Colors.grey,
                                  size:15,
                                )
                              )
                            ),
                          );
                        }),
                      ), 
        
                    ],
                  ),
        
          Positioned(
        right: 2,
        top: 2,
        child: InkWell(
          onTap: () {
            setState(() {
              _isClicked = !_isClicked; 
            });
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavouriteScreen()),
            );
          },
          child: Stack(
            children: [
              Image.asset(
                "assets/love.png",
               height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              if (_isClicked)
                Container(
                  height: 40,
                  width: 40,
                  color: const Color.fromARGB(255, 11, 61, 13).withOpacity(0.5), 
                ),
            ],
          ),
        ),
            ),
        
        
        
        Positioned(
          right:4,
          bottom:25,
        
        child: InkWell(
          onTap: () {
            setState(() {
              _isClicked = !_isClicked; 
            });
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavouriteScreen()),
            );
          },
          child: Stack(
            children: [
              Image.asset(
                "assets/cart.png",
               height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              if (_isClicked)
                Container(
                  height: 40,
                  width: 40,
                  color: const Color.fromARGB(255, 11, 61, 13).withOpacity(0.5), 
                ),
            ],
          ),
        ),
            ),
        
                        ],
                      )
                    ),
                  ),
        
                  // Brinjal
                   SizedBox(width:2),
                   SizedBox(width:5),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      width:150,
                      height:170,
                      decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius:BorderRadius.circular(10),
                         border: Border.all(
                              color: const Color.fromARGB(255, 192, 182, 182), 
                         width: 2.0,        
                        ),
                    
                      ),
                      child:Stack(
                        children: [
                      
                  Column(
                    mainAxisSize:MainAxisSize.min,
                    children: [
                      SizedBox(height:25),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> TenthScreen()));
                        },
                        child:Image.asset("assets/brinjal.png",
                      width:70,
                      height:70,
                      ),
                      ),
                      SizedBox(height:3),
                      Padding(
                        padding: const EdgeInsets.only(left:7),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child:Text("Brinjal", style:TextStyle(fontSize:16, color:Colors.black),
                          ),
                        ),
                      ),
                    
                       SizedBox(height:1),
                         Padding(
                        padding: const EdgeInsets.only(left:7),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child:Text("Rs. 140.99", style:TextStyle(fontSize:12,color:Colors.black, fontWeight:FontWeight.bold)),
                          ),
                        ),
                      
                      
        
        
                      SizedBox(height: 2),
                      Row(
                        children:List.generate(5, (index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal:1),
                            child: Material(
                              color:Colors.transparent,
                              child:InkWell(
                                onTap:() {
                                  setState(() {
                                    _currentRating = index + 1;
                            
                                    
                                  });
                                },
                                child:Icon(
                                  Icons.star,
                                  color: index < _currentRating? Colors.yellow : Colors.grey,
                                  size:15,
                                )
                              )
                            ),
                          );
                        }),
                      ), 
        
                    ],
                  ),
        
          Positioned(
        right: 2,
        top: 2,
        child: InkWell(
          onTap: () {
            setState(() {
              _isClicked = !_isClicked; 
            });
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavouriteScreen()),
            );
          },
          child: Stack(
            children: [
              Image.asset(
                "assets/love.png",
               height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              if (_isClicked)
                Container(
                  height: 40,
                  width: 40,
                  color: const Color.fromARGB(255, 11, 61, 13).withOpacity(0.5), 
                ),
            ],
          ),
        ),
            ),
        
        
        
        Positioned(
          right:4,
          bottom:25,
        
        child: InkWell(
          onTap: () {
            setState(() {
              _isClicked = !_isClicked; 
            });
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavouriteScreen()),
            );
          },
          child: Stack(
            children: [
              Image.asset(
                "assets/cart.png",
               height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              if (_isClicked)
                Container(
                  height: 40,
                  width: 40,
                  color: const Color.fromARGB(255, 11, 61, 13).withOpacity(0.5), 
                ),
            ],
          ),
        ),
            ),
        
                        ],
                      )
                    ),
                  ),
        
                ],
                          ),
              ),
              SizedBox(height:5),
               SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width:5),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      width:150,
                      height:170,
                      decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius:BorderRadius.circular(10),
                         border: Border.all(
                              color: const Color.fromARGB(255, 192, 182, 182), 
                         width: 2.0,        
                        ),
                    
                      ),
                      child:Stack(
                        children: [
                      
                  Column(
                    mainAxisSize:MainAxisSize.min,
                    children: [
                      SizedBox(height:25),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> TenthScreen()));
                        },
                        child:Image.asset("assets/chilli.png",
                      width:70,
                      height:70,
                      ),
                      ),
                      SizedBox(height:3),
                      Padding(
                        padding: const EdgeInsets.only(left:7),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child:Text("Chilli", style:TextStyle(fontSize:16, color:Colors.black),
                          ),
                        ),
                      ),
                    
                       SizedBox(height:1),
                         Padding(
                        padding: const EdgeInsets.only(left:7),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child:Text("Rs. 140.99", style:TextStyle(fontSize:12,color:Colors.black, fontWeight:FontWeight.bold)),
                          ),
                        ),
                      SizedBox(height: 2),
                      Row(
                        children:List.generate(5, (index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal:1),
                            child: Material(
                              color:Colors.transparent,
                              child:InkWell(
                                onTap:() {
                                  setState(() {
                                    _currentRating = index + 1;
                            
                                    
                                  });
                                },
                                child:Icon(
                                  Icons.star,
                                  color: index < _currentRating? Colors.yellow : Colors.grey,
                                  size:15,
                                )
                              )
                            ),
                          );
                        }),
                      ), 
        
                    ],
                  ),
        
          Positioned(
        right: 2,
        top: 2,
        child: InkWell(
          onTap: () {
            setState(() {
              _isClicked = !_isClicked; 
            });
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavouriteScreen()),
            );
          },
          child: Stack(
            children: [
              Image.asset(
                "assets/love.png",
               height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              if (_isClicked)
                Container(
                  height: 40,
                  width: 40,
                  color: const Color.fromARGB(255, 11, 61, 13).withOpacity(0.5), 
                ),
            ],
          ),
        ),
            ),
        
        
        
        Positioned(
          right:4,
          bottom:25,
        
        child: InkWell(
          onTap: () {
            setState(() {
              _isClicked = !_isClicked; 
            });
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavouriteScreen()),
            );
          },
          child: Stack(
            children: [
              Image.asset(
                "assets/cart.png",
               height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              if (_isClicked)
                Container(
                  height: 40,
                  width: 40,
                  color: const Color.fromARGB(255, 11, 61, 13).withOpacity(0.5), 
                ),
            ],
          ),
        ),
            ),
        
                        ],
                      )
                    ),
                  ),
                
                // Ladies' Fingers
                  SizedBox(width:2),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      width:150,
                      height:170,
                      decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius:BorderRadius.circular(10),
                         border: Border.all(
                              color: const Color.fromARGB(255, 192, 182, 182), 
                         width: 2.0,        
                        ),
                    
                      ),
                      child:Stack(
                        children: [
                      
                  Column(
                    mainAxisSize:MainAxisSize.min,
                    children: [
                      SizedBox(height:25),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> TenthScreen()));
                        },
                        child:Image.asset("assets/fingers.png",
                      width:70,
                      height:70,
                      ),
                      ),
                      SizedBox(height:3),
                      Padding(
                        padding: const EdgeInsets.only(left:7),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child:Text("Ladieis'Fingers", style:TextStyle(fontSize:16, color:Colors.black),
                          ),
                        ),
                      ),
                    
                       SizedBox(height:1),
                         Padding(
                        padding: const EdgeInsets.only(left:7),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child:Text("Rs. 140.99", style:TextStyle(fontSize:12,color:Colors.black, fontWeight:FontWeight.bold)),
                          ),
                        ),
                      
                      
        
        
                      SizedBox(height: 2),
                      Row(
                        children:List.generate(5, (index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal:1),
                            child: Material(
                              color:Colors.transparent,
                              child:InkWell(
                                onTap:() {
                                  setState(() {
                                    _currentRating = index + 1;
                            
                                    
                                  });
                                },
                                child:Icon(
                                  Icons.star,
                                  color: index < _currentRating? Colors.yellow : Colors.grey,
                                  size:15,
                                )
                              )
                            ),
                          );
                        }),
                      ), 
        
                    ],
                  ),
        
          Positioned(
        right: 2,
        top: 2,
        child: InkWell(
          onTap: () {
            setState(() {
              _isClicked = !_isClicked; 
            });
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavouriteScreen()),
            );
          },
          child: Stack(
            children: [
              Image.asset(
                "assets/love.png",
               height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              if (_isClicked)
                Container(
                  height: 40,
                  width: 40,
                  color: const Color.fromARGB(255, 11, 61, 13).withOpacity(0.5), 
                ),
            ],
          ),
        ),
            ),
        
        
        
        Positioned(
          right:4,
          bottom:25,
        
        child: InkWell(
          onTap: () {
            setState(() {
              _isClicked = !_isClicked; 
            });
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavouriteScreen()),
            );
          },
          child: Stack(
            children: [
              Image.asset(
                "assets/cart.png",
               height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              if (_isClicked)
                Container(
                  height: 40,
                  width: 40,
                  color: const Color.fromARGB(255, 11, 61, 13).withOpacity(0.5), 
                ),
            ],
          ),
        ),
            ),
        
                        ],
                      )
                    ),
                  ),
        
                  // Capsicums
                   SizedBox(width:2),
                   SizedBox(width:5),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      width:150,
                      height:170,
                      decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius:BorderRadius.circular(10),
                         border: Border.all(
                              color: const Color.fromARGB(255, 192, 182, 182), 
                         width: 2.0,        
                        ),
                    
                      ),
                      child:Stack(
                        children: [
                      
                  Column(
                    mainAxisSize:MainAxisSize.min,
                    children: [
                      SizedBox(height:25),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> TenthScreen()));
                        },
                        child:Image.asset("assets/capsicums.png",
                      width:70,
                      height:70,
                      ),
                      ),
                      SizedBox(height:3),
                      Padding(
                        padding: const EdgeInsets.only(left:7),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child:Text("Capsicums", style:TextStyle(fontSize:16, color:Colors.black),
                          ),
                        ),
                      ),
                    
                       SizedBox(height:1),
                         Padding(
                        padding: const EdgeInsets.only(left:7),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child:Text("Rs. 140.99", style:TextStyle(fontSize:12,color:Colors.black, fontWeight:FontWeight.bold)),
                          ),
                        ),
                      
                      
        
        
                      SizedBox(height: 2),
                      Row(
                        children:List.generate(5, (index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal:1),
                            child: Material(
                              color:Colors.transparent,
                              child:InkWell(
                                onTap:() {
                                  setState(() {
                                    _currentRating = index + 1;
                            
                                    
                                  });
                                },
                                child:Icon(
                                  Icons.star,
                                  color: index < _currentRating? Colors.yellow : Colors.grey,
                                  size:15,
                                )
                              )
                            ),
                          );
                        }),
                      ), 
        
                    ],
                  ),
        
          Positioned(
        right: 2,
        top: 2,
        child: InkWell(
          onTap: () {
            setState(() {
              _isClicked = !_isClicked; 
            });
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavouriteScreen()),
            );
          },
          child: Stack(
            children: [
              Image.asset(
                "assets/love.png",
               height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              if (_isClicked)
                Container(
                  height: 40,
                  width: 40,
                  color: const Color.fromARGB(255, 11, 61, 13).withOpacity(0.5), 
                ),
            ],
          ),
        ),
            ),
        
        
        
        Positioned(
          right:4,
          bottom:25,
        
        child: InkWell(
          onTap: () {
            setState(() {
              _isClicked = !_isClicked; 
            });
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavouriteScreen()),
            );
          },
          child: Stack(
            children: [
              Image.asset(
                "assets/cart.png",
               height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              if (_isClicked)
                Container(
                  height: 40,
                  width: 40,
                  color: const Color.fromARGB(255, 11, 61, 13).withOpacity(0.5), 
                ),
            ],
          ),
        ),
            ),
        
                        ],
                      )
                    ),
                  ),
        
        
        
        
        
                
                
                
                ],
                          ),
              )
        
        
            
          ],
        ),
      ),

        



    );
  }
}