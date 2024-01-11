
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:videoplayer/Pages/files.dart';
import 'package:videoplayer/library/bottom_navbar.dart';

import 'help.dart';

class Home extends StatelessWidget{
  const Home({super.key});


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {  }, icon: const Icon(Iconsax.menu),),
        title: const Text("Homepage", style: TextStyle(fontSize: 20, color: Colors.white),),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      extendBodyBehindAppBar: false,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: const Center(
          child: Column(
            children: [
              Text("Hello, you're in the homepage"),
              SizedBox(
                width: 50,
                height: 70,
              ),
              SizedBox(
                width: 100,
                height: 600,)
            ],
          ),
        ),
      ),
    );
  }
}
