import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:videoplayer/Pages/files.dart';
import 'package:videoplayer/Pages/help.dart';
import 'package:videoplayer/Pages/home.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // Icons list
  final iconList = [
    const Icon(Iconsax.home),
    const Icon(Iconsax.folder),
    const Icon(Iconsax.folder_open),
    const Icon(Iconsax.info_circle)
  ];


  int pageIndex = 0; // Pages Index


  // List of pages
  final pageList = [
    Home(),
    Files(),
    Help()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: 50,
        height: 75,
        padding:const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: BottomNavigationBar(
            selectedFontSize: 15,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            backgroundColor: Colors.blueAccent,
            currentIndex: pageIndex,
            items: [
              const BottomNavigationBarItem(icon: Icon(Iconsax.home), tooltip: "Home", label: "Home"),
              (pageIndex == 1) ? const BottomNavigationBarItem(icon: Icon(Iconsax.folder_open), tooltip: "Files", label: "Files") : const BottomNavigationBarItem(icon: Icon(Iconsax.folder), tooltip: "Files", label: "Files"),
              const BottomNavigationBarItem(icon: Icon(Iconsax.info_circle), tooltip: "Help", label: "Help")
            ],
            onTap: (value){
              setState(() {
                pageIndex = value;
              });
            },
          ),
        ),
      ),
      body: pageList[pageIndex],
    );
  }
}
