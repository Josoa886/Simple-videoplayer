
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  const Home({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage", style: TextStyle(fontSize: 20, color: Colors.white),),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      extendBodyBehindAppBar: false,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Center(
          child: Column(
            children: [
              Text("Hello, your're in the homepage"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: 50,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
        ),
        //child: ,
      ),
      //bottomNavigationBar: ,
    );
  }
}