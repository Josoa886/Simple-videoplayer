
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:iconsax/iconsax.dart';
import 'package:videoplayer/Pages/files.dart';
import 'package:videoplayer/library/bottom_navbar.dart';
import 'package:videoplayer/screens/itemsScreen.dart';

import 'about.dart';

class Home extends StatelessWidget{
  const Home({super.key});


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {  }, icon: const Icon(Iconsax.menu),),
        title: const Text("Homepage", style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w500,fontSize: 20, color: Colors.white),),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      extendBodyBehindAppBar: false,
      body: ListView(
        padding: const EdgeInsets.only(left: 15, right: 15),
                children: [
                  const SizedBox( height: 20,),
                  const Text(
                    "Items A",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                    ),),
                 SizedBox(
                   height: 160,
                   child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                       itemCount: 10,
                       itemBuilder: (context, index){
                         return GestureDetector(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context) =>  const Item()));
                           },
                           child: Container(
                             width: 150,
                             margin: const EdgeInsets.only(left: 10, right: 10),
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                             ),
                             child: const Card(
                               elevation: 5,
                               color: Colors.white,
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Icon(Icons.error_outline_rounded, size: 40, color: Colors.red,),
                                   SizedBox(height: 10,),
                                   Text(
                                     "Error while getting data",
                                     style: TextStyle(
                                       fontSize: 10,
                                       fontFamily: 'Poppins'
                                     ),
                                   )
                                 ],
                               ),
                             ),
                             ));
                       }
                   ),
                 ),

                  const SizedBox( height: 30,),
                  const Text(
                    "Items B",
                    style:  TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                    ),),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                    height: 200,
                    child: GestureDetector(
                      onTap: (){},
                      child:  const Card(
                        elevation: 5,
                        color: Colors.greenAccent,
                        /*
                      * child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "New video",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  color: Colors.black26,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          )
                        ],
                      ),
                      * */
                      ),
                    )
                  ),


                  const SizedBox( height: 30,),
                  const Text(
                    "Items C",
                    style:  TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600
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
                    style:  TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                    ),),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                    height: 200,
                    child: const Card(
                      elevation: 5,
                      color: Colors.purpleAccent,
                    ),
                  ),


                  const SizedBox( height: 30,),
                  const Text(
                    "Items E",
                    style:  TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                    ),),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                    height: 200,
                    child: const Card(
                      elevation: 5,
                      color: Colors.redAccent,
                    ),
                  )
                ],
              )
    );
  }
}
