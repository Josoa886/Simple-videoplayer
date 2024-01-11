
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:iconsax/iconsax.dart';
import 'package:videoplayer/Pages/files.dart';
import 'package:videoplayer/library/bottom_navbar.dart';
import 'package:videoplayer/screens/itemsScreen.dart';

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
      body: ListView(
        padding: EdgeInsets.only(left: 15, right: 15),
                children: [
                  const SizedBox( height: 20,),
                  const Text(
                    "Items A",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                    ),),
                 SizedBox(
                   height: 150,
                   child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                       itemCount: 10,
                       itemBuilder: (context, index){
                         return GestureDetector(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context) => Item()));
                           },
                           child: Container(
                             margin: const EdgeInsets.only(left: 10, right: 10),
                             alignment: Alignment.center,
                             width: 100,
                             decoration: BoxDecoration(
                               color: Colors.blueAccent,
                               borderRadius: BorderRadius.circular(10),
                             ),
                             child: Text("${index +1}"),
                           ),
                         );
                       }
                   ),
                 ),

                  const SizedBox( height: 30,),
                  const Text(
                    "Items B",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                    ),),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                    height: 150,
                    color: Colors.grey,),


                  const SizedBox( height: 30,),
                  const Text(
                    "Items C",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                    ),),
                  SizedBox(
                    height: 250,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 5,
                        itemBuilder: (context, index){
                          return GestureDetector(
                            onTap: (){},
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 10,),
                              alignment: Alignment.center,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.deepPurpleAccent,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text("${index +1}"),
                            ),
                          );
                        }
                    ),
                  ),

                  const SizedBox( height: 30,),
                  const Text(
                    "Items D",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                    ),),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                    height: 200,
                    color: Colors.green,
                  ),


                  const SizedBox( height: 30,),
                  const Text(
                    "Items E",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                    ),),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                    height: 200,
                    color: Colors.green,
                  )
                ],
              )
    );
  }
}
