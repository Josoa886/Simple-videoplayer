import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
            Icon(Iconsax.information, color: Colors.blueAccent, size: 30,),
            Text("About Us", style: TextStyle(fontFamily: 'Poppins',fontSize: 20,fontWeight: FontWeight.normal, color: Colors.blueAccent),)
          ],
        ),
      ),
    );
  }
}
