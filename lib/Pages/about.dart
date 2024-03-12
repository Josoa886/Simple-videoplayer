import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(CupertinoIcons.info_circle, color: Colors.blueAccent, size: 30,),
            Text("About Us", style: TextStyle(fontFamily: 'Poppins',fontSize: 20,fontWeight: FontWeight.normal, color: Colors.blueAccent),),
            SizedBox(height: 20,),
            Text.rich(TextSpan(
              children: [
                TextSpan(text: "VideoPlayer App", style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500, color: Colors.black26, fontSize: 15)),
                TextSpan(text: "    Version 1.0", style: TextStyle(fontFamily: 'Poppins', fontSize: 10, fontWeight: FontWeight.normal, color: Colors.black26))
              ]
            ),),
            Text("Developped by Josoa886 (GitHub)", style: TextStyle(fontFamily: 'Poppins', fontSize: 15, color: Colors.black26),),
          ],
        ),
      ),
    );
  }
}
