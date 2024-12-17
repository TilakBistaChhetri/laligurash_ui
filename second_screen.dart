import 'package:flutter/material.dart';
import 'package:laligurashapp/Screens/register_screen.dart';
import 'package:laligurashapp/Screens/third_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

body:Stack(
          children: [
            Column(
  children: [
    SizedBox(height:160),
    Center(child:Image.asset("assets/ride.png"),
    ),
    SizedBox(height:25),
    Center(child:Image.asset("assets/text.png"),
    ),

     SizedBox(height:35),
    Center(child:Image.asset("assets/arrow.png", color:const Color.fromARGB(255, 16, 80, 18)),
    ),

      SizedBox(height:20),
    Center(
      child: TextButton(onPressed: () { 
        Navigator.push(context, MaterialPageRoute(builder: (context)=> ThirdScreen()));

      }, child: Text("Next", style:TextStyle(fontSize:17, color:const Color.fromARGB(255, 73, 69, 69))),
      ),
     
    )
    ]
    ),
    
            
            Positioned(
              top: 16, 
              right: 16, 
              child:TextButton(
  onPressed: () {
  Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterScreen()));
  },
 
  child: Row(
    mainAxisSize: MainAxisSize.min,  
    children: [
      Text('Skip', style: TextStyle(color: const Color.fromARGB(255, 100, 94, 94))),  
      Icon(Icons.skip_next, color:const Color.fromARGB(255, 100, 94, 94)),  
    ],
  ),
)
              
            ),
            
             

            
          ],
 ),
    
 



    );
  }
}



