import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      children: [
        Text("missu", style: TextStyle(color: Colors.red),),
        SizedBox(height: 50,),
        Text("hi baby", style: TextStyle(color: const Color.fromARGB(255, 244, 54, 219)),),
        SizedBox(height: 50,),
        Text("masala ka karon", style: TextStyle(color: const Color.fromARGB(255, 244, 54, 212)),),

Row(children: [
        Text("nganga bala kay pusdakan takaw", style: TextStyle(color: Colors.red),), 
        SizedBox(width: 50,),
        Text("kaon kana lab?", style: TextStyle(color: Colors.red),),
     
      ],
      ),

Container(
  height: 250,
  width: 250,
  color: Colors. pink,
  child: Center(child: Text("hello world", style: TextStyle(color: Colors.white,),)
  
       )
      )  
     ],
    ),
  );
 }
}