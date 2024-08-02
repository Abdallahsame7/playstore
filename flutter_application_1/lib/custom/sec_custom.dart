import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/custom/items.dart';

class sec_custom extends StatelessWidget {
  
    String? image2;
    String? title2;
    String? subtitle2;
    String? rating2;
    String? size2;

   sec_custom({super.key ,required this.image2 , required this.rating2 , required this.size2 , required this.subtitle2 , required this.title2 });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                width: 50,
                height: 50,
                
                child: Image.network(image2! , fit: BoxFit.cover,))),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title2! , style: TextStyle(color: Colors.white),),
                      Text(subtitle2! , style: TextStyle(color: Colors.white),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(rating2! , style: TextStyle(color: Colors.white),),
                          Icon(Icons.star_rate_rounded , color: Colors.white, size: 15,),
                          SizedBox(width: 10,),
                          Text(size2! , style: TextStyle(color: Colors.white),)
                        ],
                      ),
                  
                    ],
                  ),
                )
          ],
        )
      ],
    );
  }
}