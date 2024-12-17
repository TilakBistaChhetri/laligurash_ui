import 'package:flutter/material.dart';
import 'package:laligurashapp/Screens/register_screen.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
body:Stack(
  children: [
    Column(
  children: [
    SizedBox(height:160),
    Center(child:Image.asset("assets/watching.png"),
    ),
    SizedBox(height:25),
    Center(child:Image.asset("assets/text2.png"),
    ),

     SizedBox(height:35),
    Center(child:Image.asset("assets/arrow1.png", color:const Color.fromARGB(255, 16, 80, 18)),
    ),

      SizedBox(height:20),
    Center(
      child: TextButton(onPressed: () { 
        Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterScreen()));

      }, child: Text("Next", style:TextStyle(fontSize:17, color:const Color.fromARGB(255, 73, 69, 69))),
      ),
     
    )
    
    


  ],
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
)

    );
  }
}