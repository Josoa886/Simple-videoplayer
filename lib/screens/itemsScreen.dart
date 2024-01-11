import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: const Text(
            "Item content",
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.blueAccent,
        ),),
      ),
    );
  }
}
