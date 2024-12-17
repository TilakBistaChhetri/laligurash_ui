import 'package:flutter/material.dart';
import 'package:laligurashapp/Screens/home_screen.dart';

class EntryScreen extends StatefulWidget {
  const EntryScreen({super.key});

  @override
  State<EntryScreen> createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height:80),
              Center(child:Image.asset("assets/mobile.png"),
              ),
                SizedBox(height:5),
                Container(
                 width: 100,                
                 height: 2,             
                 color: const Color.fromARGB(255, 0, 0, 0),         
                ),
                SizedBox(height:6),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Align(
          alignment:Alignment.topLeft,
          child:Text("Login", style:TextStyle(fontSize:25, fontWeight:FontWeight.bold)),
                ),
              ),






              SizedBox(height:2),
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
                     hintText: "Password",
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
        "assets/password.png",
        width: 25,
        height: 25,
        fit:BoxFit.cover,
      ),
    ),

      ],
    ),
          

               SizedBox(height:2),
          
    TextButton(
  onPressed: () {
  // Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterScreen()));
  },
      child:Text('Forgot Password?', style: TextStyle(color:const Color.fromARGB(255, 29, 104, 31))),
),





   




         
               SizedBox(height:2),
               SizedBox(
                width:350,
                height:50,
                 child:ElevatedButton(
                onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
          
               }, 
               style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 17, 92, 19),
                 shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
          
                 
               ),
              
               child: Text("Continue", style:TextStyle(fontSize:20, color:Colors.white, fontWeight:FontWeight.bold)),
               )
           
          
               ),
                SizedBox(height:2),

                Center( child:Image.asset("assets/or.png", width:300, color: Colors.black)),

                SizedBox(height:15),
           SizedBox(
  width: 350,
  height: 50,
  child: ElevatedButton(
    onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => EntryScreen()));
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
          padding: const EdgeInsets.only(left:5),
          child: Image.asset(
            "assets/google.png", 
            width: 24,
            height: 24,
          ),
        ),
        SizedBox(width: 50),
        Center(child:Text(
          "Login With Google",
          style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 94, 83, 83),
          ),
        ),
    ),
      ],
    ),
  ),
)
 

            ],
          ),
        )


    );
  }
}