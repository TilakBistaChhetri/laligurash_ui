import 'package:flutter/material.dart';
import 'package:laligurashapp/Screens/entry-screen.dart';
import 'package:laligurashapp/details_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Column(
  children: [
    SizedBox(height:175),
    Center(child:Image.asset("assets/laptop.png"),
    ),

     SizedBox(height:25),
     SizedBox(
      width:350,
      height:50,

       child:ElevatedButton(
      
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsScreen()));

     }, 
     style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 17, 92, 19),
       shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),

       
     ),
    
     child: Text("Register", style:TextStyle(fontSize:20, color:Colors.white, fontWeight:FontWeight.bold)),
     )
 

     ),

      SizedBox(height:12),
     SizedBox(
      width:350,
      height:50,

       child:ElevatedButton(
      
      onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> EntryScreen()));

     }, 
     style: ElevatedButton.styleFrom(
       shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
      side:BorderSide(
        color:Colors.black,
      )
    ),

       
     ),
    
     child: Text("Login", style:TextStyle(fontSize:20, color:Colors.black, fontWeight:FontWeight.bold)),
     )
 

     )
    


  ],
)
    );
  }
}