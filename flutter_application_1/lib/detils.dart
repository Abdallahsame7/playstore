import 'package:flutter/material.dart';
import 'package:flutter_application_1/custom/items.dart';

class MyWidget extends StatelessWidget {
  final item itemty;

   MyWidget({super.key, required this.itemty});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
         Image.network(itemty.image2!)
        ],
      ),
    );
  }
}