import 'package:flutter/material.dart';

class custom extends StatelessWidget {
  String image;
  String title;
  String rating;

   custom({super.key , required this.image , required this.rating ,required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 150,
          height: 120,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(image , fit: BoxFit.cover,)),
        ),
        SizedBox(height: 15,),
        Text(title , 
        style: TextStyle(color: Colors.white , fontSize: 16),
        ),
        Row(
          children: [
            Text(rating , style: TextStyle(color: Colors.white , fontSize: 13),),
            Icon(Icons.star_rate , color: Colors.white, size: 10,)
          ],
        )
      ],
    );
  }
}