
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  const Home({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage", style: TextStyle(fontSize: 20, color: Colors.white),),
      ),
      //bottomNavigationBar: ,
    );
  }
}