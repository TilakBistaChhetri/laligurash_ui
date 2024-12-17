import 'package:flutter/material.dart';
import 'package:laligurashapp/Screens/home_screen.dart';

class DetailsScreen extends StatefulWidget {
DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  //late String email;
  late String fullName;
  late String mobile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
         child: Column(
           children: [
             SizedBox(height:12),
             Center(child:Image.asset("assets/qr.png"),
             ),
         
             SizedBox(height:1),
            Container(
                 width: 370,       
                 height: 2,             
                 color: const Color.fromARGB(255, 0, 0, 0),         
              ),
         
               SizedBox(height:3),
              
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Align(
          alignment:Alignment.topLeft,
          child:Text("Register", style:TextStyle(fontSize:25, fontWeight:FontWeight.bold)),
               ),
             ),
             SizedBox(height:1),
             Stack(
               children: [
         
             Padding(
               padding: const EdgeInsets.only(left:50, right:50),
               child: TextField(
                     decoration:InputDecoration(
                       hintText: "Email",
                       hintStyle: TextStyle(fontSize:14, color:const Color.fromARGB(255, 48, 41, 41)),
                    
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey), 
          ),
                 
                     )
                   ),
             ),
         
             Positioned(
               left: 10, 
               top: 12,  
               child: Image.asset(
          "assets/email.png",
          width: 25,
          height: 25,
          fit:BoxFit.cover,
               ),
             ),
         
               ],
             ),
         
               SizedBox(height:1),
             Stack(
               children: [
         
             Padding(
               padding: const EdgeInsets.only(left:50, right:50),
               child: TextField(
                     decoration:InputDecoration(
                       hintText: "Full Name",
                       hintStyle: TextStyle(fontSize:14, color:const Color.fromARGB(255, 48, 41, 41)),
                    
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey), 
          ),
                 
                     )
                   ),
             ),
         
             Positioned(
               left: 10, 
               top: 12,  
               child: Image.asset(
          "assets/contact.png",
          width: 25,
          height: 25,
          fit:BoxFit.cover,
               ),
             ),
         
               ],
             ),
         
         
               SizedBox(height:1),
             Stack(
               children: [
         
             Padding(
               padding: const EdgeInsets.only(left:50, right:50),
               child: TextField(
                     decoration:InputDecoration(
                       hintText: "Mobile",
                       hintStyle: TextStyle(fontSize:14, color:const Color.fromARGB(255, 48, 41, 41)),
                    
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey), 
          ),
                 
                     )
                   ),
             ),
         
             Positioned(
               left: 10, 
               top: 12,  
               child: Image.asset(
          "assets/phone.png",
          width: 25,
          height: 25,
          fit:BoxFit.cover,
               ),
             ),
         
               ],
             ),
         
             SizedBox(height:13),
             Align(
               alignment: Alignment.centerLeft,
          child:Padding(
            padding: const EdgeInsets.only(left:25),
            child: Text("Select Nearby Shop", style:TextStyle(fontSize:20, color:Colors.black)),
          ),
             ),
         
         
             SizedBox(height:15),
             SizedBox(
           width: 380,
           height: 50,
           child: ElevatedButton(
             onPressed: () {
            /*   Navigator.push(
            context, MaterialPageRoute(builder: (context) => EntryScreen())); */
             },
             style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: Colors.black,
          ),
               ),
             ),
             child: Row(
               children: [
          Padding(
            padding: const EdgeInsets.only(left:1),
            child:Image.asset(
              "assets/shop.png", 
              width: 30,
              height: 30,
            ),
         ),
          SizedBox(width:10),
          Center(child:Text(
            "Adharsha vegetable shop, Gausala",
            style: TextStyle(
              fontSize: 15,
              color: Color.fromARGB(255, 94, 83, 83),
            ),
          ),
             ),
         
             SizedBox(width:25),
             Image.asset("assets/secondicon.png",
             width:30,
             height:30,
             )
         
         
         
         
         
         
         
               ],
             ),
           ),
         ),
         
         SizedBox(height:70),
         SizedBox(
           width:350,
           height:50,
           child:ElevatedButton
           (
             
             onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
         
           },
           style:ElevatedButton.styleFrom(
             backgroundColor: const Color.fromARGB(255, 22, 92, 24),
             shape:RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(10),
             )
           ),
            child: Text("Continue", style:TextStyle(fontSize:20, color:Colors.white)))
         
         )
         
         
         
           
         
         
         
         
         
         
         
          
            
         
           
         
         
           ],
         ),
       )
  


    );
  }
}