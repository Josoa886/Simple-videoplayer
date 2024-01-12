
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:videoplayer/Pages/about.dart';
import 'package:videoplayer/Pages/home.dart';

class Files extends StatefulWidget {
  const Files({super.key});

  @override
  State<Files> createState() => _FilesState();
}

class _FilesState extends State<Files> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "Your files",
          style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Colors.white),),
        centerTitle: true,
      ),
      extendBodyBehindAppBar: false,
      body: Container(
        child: Column(
          children: [
            SearchBar(
              hintText: "Search video file",
              leading: Icon(Iconsax.search_favorite),
              onTap: (){},
            )
          ],
        ),
      ),
    );
  }
}
